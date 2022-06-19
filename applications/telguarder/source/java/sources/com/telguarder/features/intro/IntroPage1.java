package com.telguarder.features.intro;

import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebViewClient;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import com.telguarder.C2083R;
import com.telguarder.helpers.backend.BackendApi;
import com.telguarder.helpers.common.AppUtil;
import com.telguarder.helpers.country.CountryManager;
import com.telguarder.helpers.idGenerators.UID;
import com.telguarder.helpers.web.LollipopFixedWebView;
import java.util.HashMap;
import java.util.Map;
import org.bluecabin.textoo.LinksHandler;
import org.bluecabin.textoo.Textoo;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/intro/IntroPage1.class */
public class IntroPage1 extends Fragment {
    private String mPrivacyUrl;
    private String mTermsUrl;

    public Map<String, String> getCustomHeaders() {
        HashMap hashMap = new HashMap();
        hashMap.put("X-DeviceId", UID.uid(getActivity()));
        return hashMap;
    }

    private void preloadWebView(final String str) {
        new Handler().post(new Runnable() { // from class: com.telguarder.features.intro.IntroPage1.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (IntroPage1.this.getActivity() == null) {
                        return;
                    }
                    LollipopFixedWebView lollipopFixedWebView = new LollipopFixedWebView(IntroPage1.this.getActivity());
                    lollipopFixedWebView.setWebViewClient(new WebViewClient());
                    lollipopFixedWebView.getSettings().setCacheMode(-1);
                    lollipopFixedWebView.loadUrl(str, IntroPage1.this.getCustomHeaders());
                } catch (Exception e) {
                }
            }
        });
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(C2083R.layout.fragment_intro_page1, viewGroup, false);
        this.mTermsUrl = String.format(BackendApi.WEB_TERMS_AND_CONDITIONS, CountryManager.getInstance().getDeviceLanguage());
        this.mPrivacyUrl = String.format(BackendApi.WEB_PRIVACY_POLICY, CountryManager.getInstance().getDeviceLanguage());
        ((TextView) inflate.findViewById(C2083R.C2086id.welcome_title_detail_text)).setText(AppUtil.fromHtml("<b><font color=\"#ffffff\" face=\"arial\">" + getActivity().getString(2131755056) + "</font></b> - " + getActivity().getString(C2083R.string.welcome_title_detail_text)));
        String replace = getActivity().getString(C2083R.string.welcome_bottom_text_line).replace("<termlink>", "<br><a href=\"terms:\"><b>").replace("</termlink>", "</a></b>").replace("<privacylink>", "<a href=\"privacy:\"><b>").replace("</privacylink>", "</a></b>");
        TextView textView = (TextView) inflate.findViewById(C2083R.C2086id.welcome_bottom_text);
        textView.setText(AppUtil.fromHtml(replace));
        Textoo.config(textView).addLinksHandler(new LinksHandler() { // from class: com.telguarder.features.intro.IntroPage1.1
            @Override // org.bluecabin.textoo.LinksHandler
            public boolean onClick(View view, String str) {
                str.hashCode();
                if (str.equals("privacy:")) {
                    IntroLegalInfoWebView.openLegalInfo((AppCompatActivity) IntroPage1.this.getActivity(), IntroPage1.this.mPrivacyUrl);
                    return true;
                } else if (!str.equals("terms:")) {
                    return false;
                } else {
                    IntroLegalInfoWebView.openLegalInfo((AppCompatActivity) IntroPage1.this.getActivity(), IntroPage1.this.mTermsUrl);
                    return true;
                }
            }
        }).apply();
        if (((IntroActivity) getActivity()).mBottomPaddingOffset > 0) {
            LinearLayout linearLayout = (LinearLayout) inflate.findViewById(C2083R.C2086id.bottom_layout);
            linearLayout.setPadding(linearLayout.getPaddingStart(), linearLayout.getPaddingTop(), linearLayout.getPaddingEnd(), linearLayout.getPaddingBottom() + ((IntroActivity) getActivity()).mBottomPaddingOffset);
        }
        preloadWebView(this.mTermsUrl);
        preloadWebView(this.mPrivacyUrl);
        return inflate;
    }
}
