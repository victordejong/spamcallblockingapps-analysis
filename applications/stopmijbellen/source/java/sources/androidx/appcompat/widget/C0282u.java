package androidx.appcompat.widget;

import android.app.Activity;
import android.content.ClipData;
import android.os.Build;
import android.text.Selection;
import android.text.Spannable;
import android.view.DragEvent;
import android.view.View;
import android.widget.TextView;
import p163m0.C3563c;
import p163m0.C3589v;
/* renamed from: androidx.appcompat.widget.u */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/u.class */
public final class C0282u {
    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public static boolean m8429a(DragEvent dragEvent, TextView textView, Activity activity) {
        activity.requestDragAndDropPermissions(dragEvent);
        int offsetForPosition = textView.getOffsetForPosition(dragEvent.getX(), dragEvent.getY());
        textView.beginBatchEdit();
        try {
            Selection.setSelection((Spannable) textView.getText(), offsetForPosition);
            ClipData clipData = dragEvent.getClipData();
            C3589v.m2107q(textView, (Build.VERSION.SDK_INT >= 31 ? new C3563c.C3564a(clipData, 3) : new C3563c.C3566c(clipData, 3)).build());
            textView.endBatchEdit();
            return true;
        } catch (Throwable th) {
            textView.endBatchEdit();
            throw th;
        }
    }

    /* renamed from: b */
    public static boolean m8428b(DragEvent dragEvent, View view, Activity activity) {
        activity.requestDragAndDropPermissions(dragEvent);
        ClipData clipData = dragEvent.getClipData();
        C3589v.m2107q(view, (Build.VERSION.SDK_INT >= 31 ? new C3563c.C3564a(clipData, 3) : new C3563c.C3566c(clipData, 3)).build());
        return true;
    }
}
