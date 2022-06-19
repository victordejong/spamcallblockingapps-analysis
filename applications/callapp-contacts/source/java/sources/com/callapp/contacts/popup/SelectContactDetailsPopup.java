package com.callapp.contacts.popup;

import android.app.Activity;
import com.callapp.contacts.action.shared.ShareContactAction;
import com.callapp.contacts.manager.UserProfileManager;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.popup.contact.DialogMultipleChoice;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.http.HttpUtils;
import com.callapp.contacts.widget.MultipleChoiceArrayAdapter;
import com.callapp.framework.util.StringUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/SelectContactDetailsPopup.class */
public abstract class SelectContactDetailsPopup extends DialogMultipleChoice {

    /* renamed from: a */
    protected final ContactData f26921a;

    /* renamed from: b */
    protected final ArrayList<ShareContactAction.ShareItem> f26922b;

    /* renamed from: c */
    protected ShareContactAction.ShareContactState f26923c;

    /* renamed from: d */
    protected boolean[] f26924d;

    /* renamed from: e */
    protected Activity f26925e;

    /* renamed from: g */
    private String[] f26926g;

    /* renamed from: com.callapp.contacts.popup.SelectContactDetailsPopup$1 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/SelectContactDetailsPopup$1.class */
    public static /* synthetic */ class C76251 {

        /* renamed from: a */
        static final /* synthetic */ int[] f26927a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[ShareContactAction.ShareContactState.values().length];
            f26927a = iArr;
            try {
                iArr[ShareContactAction.ShareContactState.sendingMyOwnInfo.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f26927a[ShareContactAction.ShareContactState.sendingOthersInfo.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f26927a[ShareContactAction.ShareContactState.sendingThisContactsInfo.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    public SelectContactDetailsPopup(ArrayList<ShareContactAction.ShareItem> arrayList, ContactData contactData, ShareContactAction.ShareContactState shareContactState, Activity activity) {
        super("", m28040a(arrayList), null);
        this.f26921a = contactData;
        this.f26923c = shareContactState;
        this.f26922b = arrayList;
        this.f26925e = activity;
        int size = arrayList.size();
        this.f26924d = new boolean[size];
        this.f26926g = new String[size];
        Iterator<ShareContactAction.ShareItem> it2 = arrayList.iterator();
        int i = 0;
        while (it2.hasNext()) {
            ShareContactAction.ShareItem next = it2.next();
            this.f26924d[i] = true;
            this.f26926g[i] = next.toString();
            i++;
        }
    }

    /* renamed from: a */
    private static ArrayList<MultipleChoiceArrayAdapter.MultipleChoiceRowData> m28040a(ArrayList<ShareContactAction.ShareItem> arrayList) {
        ArrayList<MultipleChoiceArrayAdapter.MultipleChoiceRowData> arrayList2 = new ArrayList<>(arrayList.size());
        Iterator<ShareContactAction.ShareItem> it2 = arrayList.iterator();
        int i = 0;
        while (it2.hasNext()) {
            arrayList2.add(i, new MultipleChoiceArrayAdapter.MultipleChoiceRowData(it2.next().toString(), true));
            i++;
        }
        return arrayList2;
    }

    /* renamed from: a */
    public final String m28039a(boolean z) {
        String str;
        StringBuilder sb = new StringBuilder();
        String fullName = this.f26921a.getFullName();
        String str2 = fullName;
        if (StringUtils.m26059a((CharSequence) fullName)) {
            str2 = fullName;
            if (this.f26923c == ShareContactAction.ShareContactState.sendingMyOwnInfo) {
                str2 = UserProfileManager.get().getUserFullName();
            }
        }
        if (StringUtils.m26045b((CharSequence) str2)) {
            sb.append(str2);
            sb.append(org.apache.commons.lang3.StringUtils.f67179LF);
        }
        int length = this.f26924d.length;
        for (int i = 0; i < length; i++) {
            if (this.f26924d[i] && StringUtils.m26045b((CharSequence) this.f26926g[i])) {
                sb.append(this.f26926g[i]);
                sb.append(org.apache.commons.lang3.StringUtils.f67179LF);
            }
        }
        if (z) {
            sb.append(org.apache.commons.lang3.StringUtils.f67179LF);
        }
        int i2 = C76251.f26927a[this.f26923c.ordinal()];
        if (i2 == 1 || i2 == 2) {
            str = Activities.m27697a(2131887661, Activities.m27697a(2131886719, HttpUtils.getCallAppDomain()));
        } else if (i2 != 3) {
            str = null;
        } else {
            str = Activities.m27697a(2131887660, this.f26921a.getNameOrNumber()) + org.apache.commons.lang3.StringUtils.SPACE + Activities.m27697a(2131886719, HttpUtils.getCallAppDomain());
        }
        sb.append(str);
        return sb.toString();
    }

    public boolean isNeedToShowPopup() {
        return this.f26926g.length > 1;
    }

    public void setChoicesIndexes(ArrayList<Integer> arrayList) {
        Arrays.fill(this.f26924d, false);
        for (int i = 0; i < arrayList.size(); i++) {
            this.f26924d[arrayList.get(i).intValue()] = true;
        }
    }
}
