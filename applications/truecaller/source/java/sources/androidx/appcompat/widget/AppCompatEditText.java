package androidx.appcompat.widget;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.text.Editable;
import android.text.Selection;
import android.text.Spannable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.DragEvent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.textclassifier.TextClassifier;
import android.widget.EditText;
import androidx.appcompat.C0032R;
import androidx.core.C0122R;
import java.util.concurrent.atomic.AtomicInteger;
import p1727n3.p1734b.p1743f.C25499c;
import p1727n3.p1734b.p1743f.C25527l;
import p1727n3.p1734b.p1743f.C25529m0;
import p1727n3.p1734b.p1743f.C25533o0;
import p1727n3.p1734b.p1743f.C25534p;
import p1727n3.p1734b.p1743f.C25536q;
import p1727n3.p1807k.p1821i.AbstractC26611p;
import p1727n3.p1807k.p1821i.C26564c;
import p1727n3.p1807k.p1821i.C26614s;
import p1727n3.p1807k.p1821i.p1823g0.C26595a;
import p1727n3.p1807k.p1824j.C26638i;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatEditText.class */
public class AppCompatEditText extends EditText implements AbstractC26611p {

    /* renamed from: a */
    public final C25499c f263a;

    /* renamed from: b */
    public final C25536q f264b;

    /* renamed from: c */
    public final C25534p f265c;

    /* renamed from: d */
    public final C26638i f266d;

    public AppCompatEditText(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0032R.attr.editTextStyle);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppCompatEditText(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        C25533o0.m3337a(context);
        C25529m0.m3344a(this, getContext());
        C25499c c25499c = new C25499c(this);
        this.f263a = c25499c;
        c25499c.m3390d(attributeSet, i);
        C25536q c25536q = new C25536q(this);
        this.f264b = c25536q;
        c25536q.m3331e(attributeSet, i);
        c25536q.m3334b();
        this.f265c = new C25534p(this);
        this.f266d = new C26638i();
    }

    @Override // p1727n3.p1807k.p1821i.AbstractC26611p
    /* renamed from: a */
    public C26564c mo1562a(C26564c c26564c) {
        return this.f266d.mo1538a(this, c26564c);
    }

    @Override // android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        C25499c c25499c = this.f263a;
        if (c25499c != null) {
            c25499c.m3393a();
        }
        C25536q c25536q = this.f264b;
        if (c25536q != null) {
            c25536q.m3334b();
        }
    }

    public ColorStateList getSupportBackgroundTintList() {
        C25499c c25499c = this.f263a;
        return c25499c != null ? c25499c.m3392b() : null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C25499c c25499c = this.f263a;
        return c25499c != null ? c25499c.m3391c() : null;
    }

    @Override // android.widget.EditText, android.widget.TextView
    public Editable getText() {
        return Build.VERSION.SDK_INT >= 28 ? super.getText() : super.getEditableText();
    }

    @Override // android.widget.TextView
    public TextClassifier getTextClassifier() {
        C25534p c25534p;
        return (Build.VERSION.SDK_INT >= 28 || (c25534p = this.f265c) == null) ? super.getTextClassifier() : c25534p.m3336a();
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        this.f264b.m3329g(this, onCreateInputConnection, editorInfo);
        MediaSessionCompat.m43254a1(onCreateInputConnection, editorInfo, this);
        AtomicInteger atomicInteger = C26614s.f74505a;
        String[] strArr = (String[]) getTag(C0122R.C0124id.tag_on_receive_content_mime_types);
        InputConnection inputConnection = onCreateInputConnection;
        if (onCreateInputConnection != null) {
            inputConnection = onCreateInputConnection;
            if (strArr != null) {
                C26595a.m1607b(editorInfo, strArr);
                inputConnection = MediaSessionCompat.m43276Q(onCreateInputConnection, editorInfo, new C25527l(this));
            }
        }
        return inputConnection;
    }

    /* JADX WARN: Finally extract failed */
    @Override // android.widget.TextView, android.view.View
    public boolean onDragEvent(DragEvent dragEvent) {
        Activity activity;
        boolean z = false;
        if (Build.VERSION.SDK_INT >= 24) {
            z = false;
            if (dragEvent.getLocalState() == null) {
                AtomicInteger atomicInteger = C26614s.f74505a;
                if (((String[]) getTag(C0122R.C0124id.tag_on_receive_content_mime_types)) == null) {
                    z = false;
                } else {
                    Context context = getContext();
                    while (true) {
                        Context context2 = context;
                        if (!(context2 instanceof ContextWrapper)) {
                            activity = null;
                            break;
                        } else if (context2 instanceof Activity) {
                            activity = (Activity) context2;
                            break;
                        } else {
                            context = ((ContextWrapper) context2).getBaseContext();
                        }
                    }
                    if (activity == null) {
                        String str = "Can't handle drop: no activity: view=" + this;
                        z = false;
                    } else if (dragEvent.getAction() == 1) {
                        z = false;
                    } else {
                        z = false;
                        if (dragEvent.getAction() == 3) {
                            activity.requestDragAndDropPermissions(dragEvent);
                            int offsetForPosition = getOffsetForPosition(dragEvent.getX(), dragEvent.getY());
                            beginBatchEdit();
                            try {
                                Selection.setSelection((Spannable) getText(), offsetForPosition);
                                C26614s.m1569l(this, new C26564c(new C26564c.C26565a(dragEvent.getClipData(), 3)));
                                endBatchEdit();
                                z = true;
                            } catch (Throwable th) {
                                endBatchEdit();
                                throw th;
                            }
                        }
                    }
                }
            }
        }
        if (z) {
            return true;
        }
        return super.onDragEvent(dragEvent);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0010, code lost:
        if (r6 == 16908337) goto L6;
     */
    @Override // android.widget.TextView
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTextContextMenuItem(int r6) {
        /*
            r5 = this;
            r0 = 0
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = r6
            r1 = 16908322(0x1020022, float:2.3877324E-38)
            if (r0 == r1) goto L13
            r0 = r7
            r9 = r0
            r0 = r6
            r1 = 16908337(0x1020031, float:2.3877366E-38)
            if (r0 != r1) goto L8b
        L13:
            java.util.concurrent.atomic.AtomicInteger r0 = p1727n3.p1807k.p1821i.C26614s.f74505a
            r10 = r0
            r0 = r5
            int r1 = androidx.core.C0122R.C0124id.tag_on_receive_content_mime_types
            java.lang.Object r0 = r0.getTag(r1)
            java.lang.String[] r0 = (java.lang.String[]) r0
            if (r0 != 0) goto L2b
            r0 = r7
            r9 = r0
            goto L8b
        L2b:
            r0 = r5
            android.content.Context r0 = r0.getContext()
            java.lang.String r1 = "clipboard"
            java.lang.Object r0 = r0.getSystemService(r1)
            android.content.ClipboardManager r0 = (android.content.ClipboardManager) r0
            r10 = r0
            r0 = r10
            if (r0 != 0) goto L44
            r0 = 0
            r10 = r0
            goto L4b
        L44:
            r0 = r10
            android.content.ClipData r0 = r0.getPrimaryClip()
            r10 = r0
        L4b:
            r0 = r10
            if (r0 == 0) goto L88
            r0 = r10
            int r0 = r0.getItemCount()
            if (r0 <= 0) goto L88
            n3.k.i.c$a r0 = new n3.k.i.c$a
            r1 = r0
            r2 = r10
            r3 = 1
            r1.<init>(r2, r3)
            r10 = r0
            r0 = r6
            r1 = 16908322(0x1020022, float:2.3877324E-38)
            if (r0 != r1) goto L70
            r0 = r8
            r9 = r0
            goto L73
        L70:
            r0 = 1
            r9 = r0
        L73:
            r0 = r10
            r1 = r9
            r0.f74422c = r1
            r0 = r5
            n3.k.i.c r1 = new n3.k.i.c
            r2 = r1
            r3 = r10
            r2.<init>(r3)
            n3.k.i.c r0 = p1727n3.p1807k.p1821i.C26614s.m1569l(r0, r1)
        L88:
            r0 = 1
            r9 = r0
        L8b:
            r0 = r9
            if (r0 == 0) goto L92
            r0 = 1
            return r0
        L92:
            r0 = r5
            r1 = r6
            boolean r0 = super.onTextContextMenuItem(r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.AppCompatEditText.onTextContextMenuItem(int):boolean");
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C25499c c25499c = this.f263a;
        if (c25499c != null) {
            c25499c.m3389e();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C25499c c25499c = this.f263a;
        if (c25499c != null) {
            c25499c.m3388f(i);
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(MediaSessionCompat.m43281N1(this, callback));
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C25499c c25499c = this.f263a;
        if (c25499c != null) {
            c25499c.m3386h(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C25499c c25499c = this.f263a;
        if (c25499c != null) {
            c25499c.m3385i(mode);
        }
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C25536q c25536q = this.f264b;
        if (c25536q != null) {
            c25536q.m3330f(context, i);
        }
    }

    @Override // android.widget.TextView
    public void setTextClassifier(TextClassifier textClassifier) {
        C25534p c25534p;
        if (Build.VERSION.SDK_INT >= 28 || (c25534p = this.f265c) == null) {
            super.setTextClassifier(textClassifier);
        } else {
            c25534p.f71440b = textClassifier;
        }
    }
}
