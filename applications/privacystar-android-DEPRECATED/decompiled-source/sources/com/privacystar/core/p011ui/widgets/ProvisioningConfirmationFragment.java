package com.privacystar.core.p011ui.widgets;

import android.graphics.Point;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.text.method.LinkMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.CheckBox;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import butterknife.Unbinder;
import com.privacystar.core.C1566R;
import com.privacystar.core.service.network.handler.CallWatchPaymentHandler;
import com.privacystar.core.service.network.model.request.CallWatchPaymentRequest;
import com.privacystar.core.service.network.model.response.CallWatchPaymentResponse;
import com.privacystar.core.util.SystemUtil;
import com.privacystar.core.util.ThemeUtil;
import com.privacystar.core.util.enums.CarrierMobileCode;
import io.reactivex.subjects.PublishSubject;
import retrofit2.Response;
import timber.log.Timber;
/* renamed from: com.privacystar.core.ui.widgets.ProvisioningConfirmationFragment */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/widgets/ProvisioningConfirmationFragment.class */
public class ProvisioningConfirmationFragment extends PSDialogFragment {
    @BindView(C1566R.C1569id.log_context_confirm_cb)
    CheckBox confirmCb;
    private PublishSubject<Response<CallWatchPaymentResponse>> responsePubSub = null;
    @BindView(C1566R.C1569id.log_context_terms_link)
    TextView termsLink;
    private Unbinder unbinder;

    @NonNull
    private String getCarrierPathString() {
        String string = getString(C1566R.string.info_dialog_purchase_url_path_boost);
        if (ThemeUtil.carrierCode == CarrierMobileCode.VIRGIN_MOBILE) {
            string = getString(C1566R.string.info_dialog_purchase_url_path_virgin);
        } else if (ThemeUtil.carrierCode == CarrierMobileCode.SPRINT_PREPAID) {
            string = getString(C1566R.string.info_dialog_purchase_url_path_sprint);
        }
        return string;
    }

    @OnClick({C1566R.C1569id.log_context_dialog_cancel})
    public void onCancelClick() {
        Timber.m28v("Dismissing dialog.", new Object[0]);
        dismiss();
    }

    @Override // android.support.p001v4.app.DialogFragment, android.support.p001v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setStyle(1, 0);
    }

    @Override // android.support.p001v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(C1566R.C1571layout.provisioning_confirmation_fragment, viewGroup);
        this.unbinder = ButterKnife.bind(this, inflate);
        this.termsLink.setMovementMethod(LinkMovementMethod.getInstance());
        return inflate;
    }

    @Override // android.support.p001v4.app.DialogFragment, android.support.p001v4.app.Fragment
    public void onDestroyView() {
        if (this.unbinder != null) {
            this.unbinder.unbind();
        }
        super.onDestroyView();
    }

    public void onProvisionImpl() {
        Timber.m28v("Attempting to provision.", new Object[0]);
        CallWatchPaymentHandler.getInstance().generateAndSendRequest(getContext(), CallWatchPaymentRequest.CallWatchPaymentActionType.PURCHASE, this.responsePubSub);
    }

    @Override // android.support.p001v4.app.Fragment
    public void onResume() {
        Window window = getDialog().getWindow();
        Point point = new Point();
        if (window != null) {
            window.getWindowManager().getDefaultDisplay().getSize(point);
            window.setLayout((int) (point.x * 0.9d), -2);
            window.setGravity(17);
        }
        super.onResume();
    }

    @OnClick({C1566R.C1569id.log_context_dialog_subscribe})
    public void onSubscribeClick() {
        boolean isChecked = this.confirmCb.isChecked();
        Timber.m37d("Subscribe clicked. Checkbox checked: [%s]", Boolean.valueOf(isChecked));
        if (isChecked) {
            onProvisionImpl();
            dismiss();
            return;
        }
        this.confirmCb.setError(getString(C1566R.string.info_dialog_purchase_field_required));
    }

    @OnClick({C1566R.C1569id.log_context_terms_link})
    public void onTermsLinkClick() {
        String string = getContext().getResources().getString(C1566R.string.info_dialog_purchase_url, getCarrierPathString());
        Timber.m28v("%s was clicked, launching [%s] intent.", "T&C link", string);
        SystemUtil.INSTANCE.openExternalWebpage(getContext(), string);
    }

    public void setupPubSub(PublishSubject<Response<CallWatchPaymentResponse>> publishSubject) {
        this.responsePubSub = publishSubject;
    }
}
