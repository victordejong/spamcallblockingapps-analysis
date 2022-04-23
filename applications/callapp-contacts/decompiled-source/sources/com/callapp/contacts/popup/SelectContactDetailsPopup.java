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

    /* renamed from: a  reason: collision with root package name */
    protected final ContactData f15355a;

    /* renamed from: b  reason: collision with root package name */
    protected final ArrayList<ShareContactAction.ShareItem> f15356b;

    /* renamed from: c  reason: collision with root package name */
    protected ShareContactAction.ShareContactState f15357c;

    /* renamed from: d  reason: collision with root package name */
    protected boolean[] f15358d;
    protected Activity e;
    private String[] g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.popup.SelectContactDetailsPopup$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/SelectContactDetailsPopup$1.class */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f15359a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[ShareContactAction.ShareContactState.values().length];
            f15359a = iArr;
            try {
                iArr[ShareContactAction.ShareContactState.sendingMyOwnInfo.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f15359a[ShareContactAction.ShareContactState.sendingOthersInfo.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f15359a[ShareContactAction.ShareContactState.sendingThisContactsInfo.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    public SelectContactDetailsPopup(ArrayList<ShareContactAction.ShareItem> arrayList, ContactData contactData, ShareContactAction.ShareContactState shareContactState, Activity activity) {
        super("", a(arrayList), null);
        this.f15355a = contactData;
        this.f15357c = shareContactState;
        this.f15356b = arrayList;
        this.e = activity;
        int size = arrayList.size();
        this.f15358d = new boolean[size];
        this.g = new String[size];
        Iterator<ShareContactAction.ShareItem> it2 = arrayList.iterator();
        int i = 0;
        while (it2.hasNext()) {
            ShareContactAction.ShareItem next = it2.next();
            this.f15358d[i] = true;
            this.g[i] = next.toString();
            i++;
        }
    }

    private static ArrayList<MultipleChoiceArrayAdapter.MultipleChoiceRowData> a(ArrayList<ShareContactAction.ShareItem> arrayList) {
        ArrayList<MultipleChoiceArrayAdapter.MultipleChoiceRowData> arrayList2 = new ArrayList<>(arrayList.size());
        Iterator<ShareContactAction.ShareItem> it2 = arrayList.iterator();
        int i = 0;
        while (it2.hasNext()) {
            arrayList2.add(i, new MultipleChoiceArrayAdapter.MultipleChoiceRowData(it2.next().toString(), true));
            i++;
        }
        return arrayList2;
    }

    public final String a(boolean z) {
        String str;
        StringBuilder sb = new StringBuilder();
        String fullName = this.f15355a.getFullName();
        String str2 = fullName;
        if (StringUtils.a((CharSequence) fullName)) {
            str2 = fullName;
            if (this.f15357c == ShareContactAction.ShareContactState.sendingMyOwnInfo) {
                str2 = UserProfileManager.get().getUserFullName();
            }
        }
        if (StringUtils.b((CharSequence) str2)) {
            sb.append(str2);
            sb.append(org.apache.commons.lang3.StringUtils.LF);
        }
        int length = this.f15358d.length;
        for (int i = 0; i < length; i++) {
            if (this.f15358d[i] && StringUtils.b((CharSequence) this.g[i])) {
                sb.append(this.g[i]);
                sb.append(org.apache.commons.lang3.StringUtils.LF);
            }
        }
        if (z) {
            sb.append(org.apache.commons.lang3.StringUtils.LF);
        }
        int i2 = AnonymousClass1.f15359a[this.f15357c.ordinal()];
        if (i2 == 1 || i2 == 2) {
            str = Activities.a(2131887661, Activities.a(2131886719, HttpUtils.getCallAppDomain()));
        } else if (i2 != 3) {
            str = null;
        } else {
            str = Activities.a(2131887660, this.f15355a.getNameOrNumber()) + org.apache.commons.lang3.StringUtils.SPACE + Activities.a(2131886719, HttpUtils.getCallAppDomain());
        }
        sb.append(str);
        return sb.toString();
    }

    public boolean isNeedToShowPopup() {
        return this.g.length > 1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setChoicesIndexes(ArrayList<Integer> arrayList) {
        Arrays.fill(this.f15358d, false);
        for (int i = 0; i < arrayList.size(); i++) {
            this.f15358d[arrayList.get(i).intValue()] = true;
        }
    }
}
