package androidx.appcompat.widget;

import android.app.Activity;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Build;
import android.os.Bundle;
import android.text.Selection;
import android.text.Spannable;
import android.util.Log;
import android.view.DragEvent;
import android.view.View;
import android.view.inputmethod.InputContentInfo;
import android.widget.TextView;
import p020b.p041h.p050l.C1609c;
import p020b.p041h.p050l.C1679w;
import p020b.p041h.p050l.p052g0.C1656b;
import p020b.p041h.p050l.p052g0.C1660c;
/* renamed from: androidx.appcompat.widget.j */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/j.class */
final class C0300j {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.widget.j$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/j$a.class */
    public class C0301a implements C1656b.AbstractC1659c {

        /* renamed from: a */
        final /* synthetic */ View f1314a;

        C0301a(View view) {
            this.f1314a = view;
        }

        @Override // p020b.p041h.p050l.p052g0.C1656b.AbstractC1659c
        /* renamed from: a */
        public boolean mo29414a(C1660c c1660c, int i, Bundle bundle) {
            boolean z = false;
            Bundle bundle2 = bundle;
            if (Build.VERSION.SDK_INT >= 25) {
                bundle2 = bundle;
                if ((i & 1) != 0) {
                    try {
                        c1660c.m29410d();
                        InputContentInfo inputContentInfo = (InputContentInfo) c1660c.m29409e();
                        Bundle bundle3 = bundle == null ? new Bundle() : new Bundle(bundle);
                        bundle3.putParcelable("androidx.core.view.extra.INPUT_CONTENT_INFO", inputContentInfo);
                        bundle2 = bundle3;
                    } catch (Exception e) {
                        Log.w("ReceiveContent", "Can't insert content from IME; requestPermission() failed", e);
                        return false;
                    }
                }
            }
            if (C1679w.m29295g0(this.f1314a, new C1609c.C1610a(new ClipData(c1660c.m29412b(), new ClipData.Item(c1660c.m29413a())), 2).m29610d(c1660c.m29411c()).m29612b(bundle2).m29613a()) == null) {
                z = true;
            }
            return z;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.appcompat.widget.j$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/j$b.class */
    public static final class C0302b {
        /* JADX WARN: Finally extract failed */
        /* renamed from: a */
        static boolean m34881a(DragEvent dragEvent, TextView textView, Activity activity) {
            activity.requestDragAndDropPermissions(dragEvent);
            int offsetForPosition = textView.getOffsetForPosition(dragEvent.getX(), dragEvent.getY());
            textView.beginBatchEdit();
            try {
                Selection.setSelection((Spannable) textView.getText(), offsetForPosition);
                C1679w.m29295g0(textView, new C1609c.C1610a(dragEvent.getClipData(), 3).m29613a());
                textView.endBatchEdit();
                return true;
            } catch (Throwable th) {
                textView.endBatchEdit();
                throw th;
            }
        }

        /* renamed from: b */
        static boolean m34880b(DragEvent dragEvent, View view, Activity activity) {
            activity.requestDragAndDropPermissions(dragEvent);
            C1679w.m29295g0(view, new C1609c.C1610a(dragEvent.getClipData(), 3).m29613a());
            return true;
        }
    }

    /* renamed from: a */
    public static C1656b.AbstractC1659c m34885a(View view) {
        return new C0301a(view);
    }

    /* renamed from: b */
    public static boolean m34884b(View view, DragEvent dragEvent) {
        if (Build.VERSION.SDK_INT < 24 || dragEvent.getLocalState() != null || C1679w.m29340F(view) == null) {
            return false;
        }
        Activity m34882d = m34882d(view);
        if (m34882d == null) {
            Log.i("ReceiveContent", "Can't handle drop: no activity: view=" + view);
            return false;
        } else if (dragEvent.getAction() == 1) {
            return !(view instanceof TextView);
        } else {
            if (dragEvent.getAction() != 3) {
                return false;
            }
            return view instanceof TextView ? C0302b.m34881a(dragEvent, (TextView) view, m34882d) : C0302b.m34880b(dragEvent, view, m34882d);
        }
    }

    /* renamed from: c */
    public static boolean m34883c(TextView textView, int i) {
        if ((i == 16908322 || i == 16908337) && C1679w.m29340F(textView) != null) {
            ClipboardManager clipboardManager = (ClipboardManager) textView.getContext().getSystemService("clipboard");
            ClipData primaryClip = clipboardManager == null ? null : clipboardManager.getPrimaryClip();
            if (primaryClip == null || primaryClip.getItemCount() <= 0) {
                return true;
            }
            C1679w.m29295g0(textView, new C1609c.C1610a(primaryClip, 1).m29611c(i == 16908322 ? 0 : 1).m29613a());
            return true;
        }
        return false;
    }

    /* renamed from: d */
    static Activity m34882d(View view) {
        Context context = view.getContext();
        while (true) {
            Context context2 = context;
            if (context2 instanceof ContextWrapper) {
                if (context2 instanceof Activity) {
                    return (Activity) context2;
                }
                context = ((ContextWrapper) context2).getBaseContext();
            } else {
                return null;
            }
        }
    }
}
