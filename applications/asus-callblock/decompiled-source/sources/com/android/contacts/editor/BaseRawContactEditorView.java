package com.android.contacts.editor;

import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import com.android.contacts.editor.KindSectionView;
import com.android.contacts.model.RawContactDelta;
import com.android.contacts.model.account.a;
import com.android.contacts.simcardmanage.SimCardContact;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/contacts/editor/BaseRawContactEditorView.class */
public abstract class BaseRawContactEditorView extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    PhotoEditorView f1104a;
    private View c;
    private View d;

    /* renamed from: b  reason: collision with root package name */
    private boolean f1105b = false;
    private boolean e = true;

    public BaseRawContactEditorView(Context context) {
        super(context);
    }

    public BaseRawContactEditorView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public abstract long a();

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(boolean z) {
        this.f1105b = z;
        this.f1104a.setVisibility(z ? 0 : 8);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.c = findViewById(2131296401);
        this.d = findViewById(2131296757);
        this.f1104a = (PhotoEditorView) findViewById(2131296778);
        this.f1104a.setEnabled(isEnabled());
    }

    public void setGroupMetaData(Cursor cursor) {
    }

    public void setHasPhoneNumber(boolean z) {
    }

    public void setPhotoBitmap(Bitmap bitmap) {
        this.f1104a.setPhotoBitmap(bitmap);
    }

    public abstract void setSimCardState(RawContactDelta rawContactDelta, a aVar, ViewIdGenerator viewIdGenerator, boolean z, int i, List<SimCardContact> list, KindSectionView.a aVar2);

    public abstract void setState(RawContactDelta rawContactDelta, a aVar, ViewIdGenerator viewIdGenerator, boolean z, KindSectionView.a aVar2);
}
