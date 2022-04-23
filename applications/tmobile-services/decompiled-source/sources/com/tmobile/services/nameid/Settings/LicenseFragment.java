package com.tmobile.services.nameid.Settings;

import android.os.Bundle;
import android.text.method.ScrollingMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.MainActivity;
import com.tmobile.services.nameid.MainApplication;
import com.tmobile.services.nameid.NameIDPage;
import com.tmobile.services.nameid.TabFragmentInterface;
import com.tmobile.services.nameid.utility.LogUtil;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/Settings/LicenseFragment.class */
public class LicenseFragment extends Fragment implements TabFragmentInterface {

    /* renamed from: f */
    TextView f12699f;

    /* renamed from: g */
    String f12700g = "%s\nCopyright %s %s\n\nLicensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at\n\nhttp://www.apache.org/licenses/LICENSE-2.0\n\nUnless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.\n\n\n\n";

    /* renamed from: h */
    String f12701h = "%s\nThe MIT License\n\nCopyright (c) %s %s\n\nPermission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the \"Software\"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:\n\nThe above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.\n\nTHE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.\n\n\n\n";

    /* renamed from: i */
    String f12702i = "BSD License\n\nFor %s software\n\nCopyright (c) %s, %s All rights reserved.\n\nRedistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:\n\n * Redistributions of source code must retain the above copyright notice, this   list of conditions and the following disclaimer.\n\n * Redistributions in binary form must reproduce the above copyright notice,   this list of conditions and the following disclaimer in the documentation   and/or other materials provided with the distribution.\n\n * Neither the name %s nor the names of its contributors may be used to   endorse or promote products derived from this software without specific   prior written permission.\n\nTHIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS \"AS IS\" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL %s OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.\n\n\n\n";

    /* renamed from: j */
    String f12703j = "JaCoCo\n\nCopyright (c) 2009, 2019 Mountainminds GmbH & Co. KG and Contributors\nThe JaCoCo Java Code Coverage Library and all included documentation is made available by Mountainminds GmbH & Co. KG, Munich. Except indicated below, the Content is provided to you under the terms and conditions of the Eclipse Public License Version 2.0 (\"EPL\"). A copy of the EPL is available at https://www.eclipse.org/legal/epl-2.0/.\nPlease visit http://www.jacoco.org/jacoco/trunk/doc/license.html for the complete license information including third party licenses and trademarks.\n\n\n\n";

    /* renamed from: k */
    String f12704k = "JUnit\n\nEclipse Public License - v 1.0\n\nTHE ACCOMPANYING PROGRAM IS PROVIDED UNDER THE TERMS OF THIS ECLIPSE PUBLIC\nLICENSE (\"AGREEMENT\"). ANY USE, REPRODUCTION OR DISTRIBUTION OF THE PROGRAM\nCONSTITUTES RECIPIENT'S ACCEPTANCE OF THIS AGREEMENT.\n\n1. DEFINITIONS\n\n\"Contribution\" means:\n\n      a) in the case of the initial Contributor, the initial code and\n         documentation distributed under this Agreement, and\n      b) in the case of each subsequent Contributor:\n\n      i) changes to the Program, and\n\n      ii) additions to the Program;\n\n      where such changes and/or additions to the Program originate from and are\ndistributed by that particular Contributor. A Contribution 'originates' from a\nContributor if it was added to the Program by such Contributor itself or anyone\nacting on such Contributor's behalf. Contributions do not include additions to\nthe Program which: (i) are separate modules of software distributed in\nconjunction with the Program under their own license agreement, and (ii) are\nnot derivative works of the Program. \n\n\"Contributor\" means any person or entity that distributes the Program.\n\n\"Licensed Patents \" mean patent claims licensable by a Contributor which are\nnecessarily infringed by the use or sale of its Contribution alone or when\ncombined with the Program.\n\n\"Program\" means the Contributions distributed in accordance with this Agreement.\n\n\"Recipient\" means anyone who receives the Program under this Agreement,\nincluding all Contributors.\n\n2. GRANT OF RIGHTS\n\n      a) Subject to the terms of this Agreement, each Contributor hereby grants\nRecipient a non-exclusive, worldwide, royalty-free copyright license to\nreproduce, prepare derivative works of, publicly display, publicly perform,\ndistribute and sublicense the Contribution of such Contributor, if any, and\nsuch derivative works, in source code and object code form.\n\n      b) Subject to the terms of this Agreement, each Contributor hereby grants\nRecipient a non-exclusive, worldwide, royalty-free patent license under\nLicensed Patents to make, use, sell, offer to sell, import and otherwise\ntransfer the Contribution of such Contributor, if any, in source code and\nobject code form. This patent license shall apply to the combination of the\nContribution and the Program if, at the time the Contribution is added by the\nContributor, such addition of the Contribution causes such combination to be\ncovered by the Licensed Patents. The patent license shall not apply to any\nother combinations which include the Contribution. No hardware per se is\nlicensed hereunder. \n\n      c) Recipient understands that although each Contributor grants the\nlicenses to its Contributions set forth herein, no assurances are provided by\nany Contributor that the Program does not infringe the patent or other\nintellectual property rights of any other entity. Each Contributor disclaims\nany liability to Recipient for claims brought by any other entity based on\ninfringement of intellectual property rights or otherwise. As a condition to\nexercising the rights and licenses granted hereunder, each Recipient hereby\nassumes sole responsibility to secure any other intellectual property rights\nneeded, if any. For example, if a third party patent license is required to\nallow Recipient to distribute the Program, it is Recipient's responsibility to\nacquire that license before distributing the Program.\n\n      d) Each Contributor represents that to its knowledge it has sufficient\ncopyright rights in its Contribution, if any, to grant the copyright license\nset forth in this Agreement. \n\n3. REQUIREMENTS\n\nA Contributor may choose to distribute the Program in object code form under\nits own license agreement, provided that:\n\n      a) it complies with the terms and conditions of this Agreement; and\n\n      b) its license agreement:\n\n      i) effectively disclaims on behalf of all Contributors all warranties and\nconditions, express and implied, including warranties or conditions of title\nand non-infringement, and implied warranties or conditions of merchantability\nand fitness for a particular purpose; \n\n      ii) effectively excludes on behalf of all Contributors all liability for\ndamages, including direct, indirect, special, incidental and consequential\ndamages, such as lost profits; \n\n      iii) states that any provisions which differ from this Agreement are\noffered by that Contributor alone and not by any other party; and\n\n      iv) states that source code for the Program is available from such\nContributor, and informs licensees how to obtain it in a reasonable manner on\nor through a medium customarily used for software exchange. \n\nWhen the Program is made available in source code form:\n\n      a) it must be made available under this Agreement; and \n\n      b) a copy of this Agreement must be included with each copy of the\nProgram. \n\nContributors may not remove or alter any copyright notices contained within the\nProgram.\n\nEach Contributor must identify itself as the originator of its Contribution, if\nany, in a manner that reasonably allows subsequent Recipients to identify the\noriginator of the Contribution.\n\n4. COMMERCIAL DISTRIBUTION\n\nCommercial distributors of software may accept certain responsibilities with\nrespect to end users, business partners and the like. While this license is\nintended to facilitate the commercial use of the Program, the Contributor who\nincludes the Program in a commercial product offering should do so in a manner\nwhich does not create potential liability for other Contributors. Therefore, if\na Contributor includes the Program in a commercial product offering, such\nContributor (\"Commercial Contributor\") hereby agrees to defend and indemnify\nevery other Contributor (\"Indemnified Contributor\") against any losses, damages\nand costs (collectively \"Losses\") arising from claims, lawsuits and other legal\nactions brought by a third party against the Indemnified Contributor to the\nextent caused by the acts or omissions of such Commercial Contributor in\nconnection with its distribution of the Program in a commercial product\noffering. The obligations in this section do not apply to any claims or Losses\nrelating to any actual or alleged intellectual property infringement. In order\nto qualify, an Indemnified Contributor must: a) promptly notify the Commercial\nContributor in writing of such claim, and b) allow the Commercial Contributor\nto control, and cooperate with the Commercial Contributor in, the defense and\nany related settlement negotiations. The Indemnified Contributor may\nparticipate in any such claim at its own expense.\n\nFor example, a Contributor might include the Program in a commercial product\noffering, Product X. That Contributor is then a Commercial Contributor. If that\nCommercial Contributor then makes performance claims, or offers warranties\nrelated to Product X, those performance claims and warranties are such\nCommercial Contributor's responsibility alone. Under this section, the\nCommercial Contributor would have to defend claims against the other\nContributors related to those performance claims and warranties, and if a court\nrequires any other Contributor to pay any damages as a result, the Commercial\nContributor must pay those damages.\n\n5. NO WARRANTY\n\nEXCEPT AS EXPRESSLY SET FORTH IN THIS AGREEMENT, THE PROGRAM IS PROVIDED ON AN\n\"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, EITHER EXPRESS OR\nIMPLIED INCLUDING, WITHOUT LIMITATION, ANY WARRANTIES OR CONDITIONS OF TITLE,\nNON-INFRINGEMENT, MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE. Each\nRecipient is solely responsible for determining the appropriateness of using\nand distributing the Program and assumes all risks associated with its exercise\nof rights under this Agreement, including but not limited to the risks and\ncosts of program errors, compliance with applicable laws, damage to or loss of\ndata, programs or equipment, and unavailability or interruption of operations.\n\n6. DISCLAIMER OF LIABILITY\n\nEXCEPT AS EXPRESSLY SET FORTH IN THIS AGREEMENT, NEITHER RECIPIENT NOR ANY\nCONTRIBUTORS SHALL HAVE ANY LIABILITY FOR ANY DIRECT, INDIRECT, INCIDENTAL,\nSPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING WITHOUT LIMITATION LOST\nPROFITS), HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,\nSTRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY\nWAY OUT OF THE USE OR DISTRIBUTION OF THE PROGRAM OR THE EXERCISE OF ANY RIGHTS\nGRANTED HEREUNDER, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGES.\n\n7. GENERAL\n\nIf any provision of this Agreement is invalid or unenforceable under applicable\nlaw, it shall not affect the validity or enforceability of the remainder of the\nterms of this Agreement, and without further action by the parties hereto, such\nprovision shall be reformed to the minimum extent necessary to make such\nprovision valid and enforceable.\n\nIf Recipient institutes patent litigation against any\nentity (including a cross-claim or counterclaim in a lawsuit) alleging that the\nProgram itself (excluding combinations of the Program with other software or\nhardware) infringes such Recipient's patent(s), then such Recipient's rights\ngranted under Section 2(b) shall terminate as of the date such litigation is\nfiled.\n\nAll Recipient's rights under this Agreement shall terminate if it fails to\ncomply with any of the material terms or conditions of this Agreement and does\nnot cure such failure in a reasonable period of time after becoming aware of\nsuch noncompliance. If all Recipient's rights under this Agreement terminate,\nRecipient agrees to cease use and distribution of the Program as soon as\nreasonably practicable. However, Recipient's obligations under this Agreement\nand any licenses granted by Recipient relating to the Program shall continue\nand survive.\n\nEveryone is permitted to copy and distribute copies of this Agreement, but in\norder to avoid inconsistency the Agreement is copyrighted and may only be\nmodified in the following manner. The Agreement Steward reserves the right to\npublish new versions (including revisions) of this Agreement from time to time.\nNo one other than the Agreement Steward has the right to modify this Agreement.\nThe Eclipse Foundation is the initial Agreement Steward. The Eclipse Foundation may assign the responsibility to\nserve as the Agreement Steward to a suitable separate entity. Each new version\nof the Agreement will be given a distinguishing version number. The Program\n(including Contributions) may always be distributed subject to the version of\nthe Agreement under which it was received. In addition, after a new version of\nthe Agreement is published, Contributor may elect to distribute the Program\n(including its Contributions) under the new version. Except as expressly stated\nin Sections 2(a) and 2(b) above, Recipient receives no rights or licenses to\nthe intellectual property of any Contributor under this Agreement, whether\nexpressly, by implication, estoppel or otherwise. All rights in the Program not\nexpressly granted under this Agreement are reserved.\n\nThis Agreement is governed by the laws of the State of New York and the\nintellectual property laws of the United States of America. No party to this\nAgreement will bring a legal action under this Agreement more than one year\nafter the cause of action arose. Each party waives its rights to a jury trial\nin any resulting litigation.\n\n\n\n";

    /* renamed from: G0 */
    private String m7482G0(String str, String str2, String str3) {
        return String.format(this.f12700g, str, str2, str3);
    }

    /* renamed from: H0 */
    private String m7481H0(String str, String str2, String str3, String str4, String str5) {
        String str6 = str5;
        if (str5.isEmpty()) {
            str6 = "THE COPYRIGHT HOLDER";
        }
        return String.format(this.f12702i, str, str2, str3, str4, str6);
    }

    /* renamed from: I0 */
    private String m7480I0(String str, String str2, String str3) {
        return String.format(this.f12701h, str, str2, str3);
    }

    /* renamed from: J0 */
    private void m7479J0() {
        if (getContext() instanceof MainActivity) {
            MainActivity mainActivity = (MainActivity) getContext();
            if (mainActivity.m7571r(mo6305F0())) {
                mainActivity.m7625N0(C1517R.string.about_settings_legal);
            }
        }
    }

    @Override // com.tmobile.services.nameid.TabFragmentInterface
    /* renamed from: F0 */
    public MainActivity.Tabs mo6305F0() {
        return MainActivity.Tabs.SETTINGS;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        LogUtil.m5639h("AboutFragment#onCreate", "created");
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        View inflate = layoutInflater.inflate(C1517R.layout.fragment_license_layout, viewGroup, false);
        this.f12699f = (TextView) inflate.findViewById(C1517R.C1520id.license_text);
        LogUtil.m5639h("AboutFragment#onCreateView", "view created");
        this.f12699f.setMovementMethod(new ScrollingMovementMethod());
        this.f12699f.setText(m7482G0("RxAndroid", "2015", "The RxAndroid authors") + m7482G0("Realm", "2017", "Realm") + m7482G0("CircleImageView", "2014 - 2019", "Henning Dodenhof") + m7482G0("Retrofit", "2013", "Square, Inc") + m7482G0("OkHttp", "2012", "Square, Inc") + m7482G0("Chucker", "2018-2020", "Chucker Team") + m7482G0("Lottie", "2018", "Airbnb, Inc.") + m7482G0("Awaitility", "2018", "Johan Haleby") + m7482G0("Firebase Android", "2018", "Google, Inc") + m7482G0("Crashlytics", "", "Google, Inc") + m7482G0("Fabric", "", "Crashlytics") + m7482G0("LibPhoneNumber", "2014", "Google, Inc") + m7482G0("DexMaker", "2016", "Apteligent, Inc.") + m7482G0("Realm Browser", "", "SCAND, Ltd.") + m7482G0("Simple XML Converter", "2013", "Square, Inc") + m7481H0("Stetho-Realm", "2015", "uPhyca, Inc.", "uPhyca", "") + m7481H0("Apptentive", "2011-2019", "Apptentive, Inc.", "Apptentive, Inc.", "Apptentive, Inc.") + m7480I0("Mockito", "2007", "Mockito contributors") + m7480I0("Stetho", "", "Facebook, Inc. and its affiliates.") + m7480I0("Android Simple Tooltip", "2016", "Douglas Nassif Roma Junior") + this.f12703j + this.f12704k);
        m7479J0();
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
    }

    @Override // com.tmobile.services.nameid.TabFragmentInterface
    public void setVisible(boolean z) {
        if (z) {
            m7479J0();
            ((MainApplication) getActivity().getApplication()).m7551E(getActivity(), NameIDPage.SettingsPage.LegalNotices.f12690b);
        }
    }
}
