package com.privacystar.core.p011ui.debug.network;

import android.support.annotation.CallSuper;
import android.support.annotation.UiThread;
import android.view.View;
import android.widget.EditText;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.privacystar.core.C1566R;
/* renamed from: com.privacystar.core.ui.debug.network.CustNetworkRequest_ViewBinding */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/debug/network/CustNetworkRequest_ViewBinding.class */
public class CustNetworkRequest_ViewBinding implements Unbinder {
    private CustNetworkRequest target;
    private View view2131296645;
    private View view2131296648;
    private View view2131296649;
    private View view2131296652;

    @UiThread
    public CustNetworkRequest_ViewBinding(CustNetworkRequest custNetworkRequest) {
        this(custNetworkRequest, custNetworkRequest.getWindow().getDecorView());
    }

    @UiThread
    public CustNetworkRequest_ViewBinding(final CustNetworkRequest custNetworkRequest, View view) {
        this.target = custNetworkRequest;
        custNetworkRequest.mUrlField = (EditText) Utils.findRequiredViewAsType(view, C1566R.C1569id.debug_network_request_url_et, "field 'mUrlField'", EditText.class);
        custNetworkRequest.mMediaTypeField = (EditText) Utils.findRequiredViewAsType(view, C1566R.C1569id.debug_network_request_media_type_et, "field 'mMediaTypeField'", EditText.class);
        custNetworkRequest.mBodyField = (EditText) Utils.findRequiredViewAsType(view, C1566R.C1569id.debug_network_request_body_et, "field 'mBodyField'", EditText.class);
        View findRequiredView = Utils.findRequiredView(view, C1566R.C1569id.debug_network_request_add_header_btn, "method 'addHeader'");
        this.view2131296645 = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() { // from class: com.privacystar.core.ui.debug.network.CustNetworkRequest_ViewBinding.1
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                custNetworkRequest.addHeader();
            }
        });
        View findRequiredView2 = Utils.findRequiredView(view, C1566R.C1569id.debug_network_request_queue_btn, "method 'queueRequest'");
        this.view2131296652 = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() { // from class: com.privacystar.core.ui.debug.network.CustNetworkRequest_ViewBinding.2
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                custNetworkRequest.queueRequest();
            }
        });
        View findRequiredView3 = Utils.findRequiredView(view, C1566R.C1569id.debug_network_request_clear_btn, "method 'clear'");
        this.view2131296648 = findRequiredView3;
        findRequiredView3.setOnClickListener(new DebouncingOnClickListener() { // from class: com.privacystar.core.ui.debug.network.CustNetworkRequest_ViewBinding.3
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                custNetworkRequest.clear();
            }
        });
        View findRequiredView4 = Utils.findRequiredView(view, C1566R.C1569id.debug_network_request_default_btn, "method 'defaults'");
        this.view2131296649 = findRequiredView4;
        findRequiredView4.setOnClickListener(new DebouncingOnClickListener() { // from class: com.privacystar.core.ui.debug.network.CustNetworkRequest_ViewBinding.4
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                custNetworkRequest.defaults();
            }
        });
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        CustNetworkRequest custNetworkRequest = this.target;
        if (custNetworkRequest == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        custNetworkRequest.mUrlField = null;
        custNetworkRequest.mMediaTypeField = null;
        custNetworkRequest.mBodyField = null;
        this.view2131296645.setOnClickListener(null);
        this.view2131296645 = null;
        this.view2131296652.setOnClickListener(null);
        this.view2131296652 = null;
        this.view2131296648.setOnClickListener(null);
        this.view2131296648 = null;
        this.view2131296649.setOnClickListener(null);
        this.view2131296649 = null;
    }
}
