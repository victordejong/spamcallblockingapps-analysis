package com.callapp.contacts.activity.contact.details.presenter.simple;

import android.widget.TextView;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.activity.contact.details.presenter.BasePresenter;
import com.callapp.contacts.model.contact.ContactDataChangeListener;
import com.callapp.contacts.util.ThemeUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/presenter/simple/TextViewPresenter.class */
public abstract class TextViewPresenter extends BasePresenter implements ContactDataChangeListener {
    protected String text;
    private TextView textView;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.activity.contact.details.presenter.simple.TextViewPresenter$2  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/presenter/simple/TextViewPresenter$2.class */
    public static /* synthetic */ class AnonymousClass2 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f12481a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[PresentersContainer.MODE.values().length];
            f12481a = iArr;
            try {
                iArr[PresentersContainer.MODE.DURING_CALL_OVERLAY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f12481a[PresentersContainer.MODE.CLIPBOARD_AUTO_SEARCH_OVERLAY.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f12481a[PresentersContainer.MODE.INCOMING_SMS_OVERLAY.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f12481a[PresentersContainer.MODE.POST_CALL_SCREEN.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    private boolean isContainerModeIsOverlay() {
        int i = AnonymousClass2.f12481a[this.presentersContainer.getContainerMode().ordinal()];
        return i == 1 || i == 2 || i == 3 || i == 4;
    }

    protected int getInitialTextColor() {
        return 0;
    }

    protected String getText() {
        return this.text;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public TextView getTextView() {
        return this.textView;
    }

    protected abstract int getTextViewId();

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isContainsContactHeader() {
        return isContainerModeIsOverlay() || this.presentersContainer.getContainerMode() == PresentersContainer.MODE.POST_CALL_SCREEN || this.presentersContainer.getContainerMode() == PresentersContainer.MODE.CALL_RECORDER_POPUP || this.presentersContainer.getContainerMode() == PresentersContainer.MODE.MISSED_CALL;
    }

    @Override // com.callapp.contacts.activity.contact.details.presenter.BasePresenter
    public void onCreate(PresentersContainer presentersContainer) {
        this.textView = (TextView) presentersContainer.findViewById(getTextViewId());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setText(final String str) {
        TextView textView;
        if (this.textView == null) {
            this.textView = (TextView) this.presentersContainer.findViewById(getTextViewId());
            int initialTextColor = getInitialTextColor();
            if (!(initialTextColor == 0 || (textView = this.textView) == null)) {
                textView.setTextColor(ThemeUtils.getColor(initialTextColor));
            }
        }
        this.text = str;
        this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.simple.TextViewPresenter.1
            @Override // java.lang.Runnable
            public void run() {
                TextViewPresenter.this.textView.setText(str);
                if (TextViewPresenter.this.textView.getVisibility() != 0) {
                    TextViewPresenter.this.textView.setVisibility(0);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setVisibility(int i) {
        TextView textView = this.textView;
        if (textView != null) {
            textView.setVisibility(i);
        }
    }
}
