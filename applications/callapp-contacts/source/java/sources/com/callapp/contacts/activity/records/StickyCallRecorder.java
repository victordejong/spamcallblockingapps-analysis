package com.callapp.contacts.activity.records;

import android.content.Context;
import android.util.AttributeSet;
import com.callapp.contacts.widget.sticky.BaseStickyView;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/records/StickyCallRecorder.class */
public class StickyCallRecorder extends BaseStickyView {

    /* renamed from: a */
    private StickyCallRecordingActions f24046a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/records/StickyCallRecorder$StickyCallRecordingActions.class */
    public interface StickyCallRecordingActions {
        /* renamed from: d */
        void mo29707d();

        /* renamed from: e */
        void mo29706e();
    }

    public StickyCallRecorder(Context context) {
        this(context, null);
    }

    public StickyCallRecorder(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public StickyCallRecorder(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // com.callapp.contacts.widget.sticky.BaseStickyView
    public int getLayout() {
        return 2131558523;
    }

    public void setListener(StickyCallRecordingActions stickyCallRecordingActions) {
        this.f24046a = stickyCallRecordingActions;
    }
}
