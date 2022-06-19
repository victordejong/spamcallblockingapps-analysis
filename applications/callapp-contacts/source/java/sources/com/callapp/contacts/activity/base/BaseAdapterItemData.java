package com.callapp.contacts.activity.base;

import android.util.SparseIntArray;
import com.callapp.contacts.manager.task.Task;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/BaseAdapterItemData.class */
public abstract class BaseAdapterItemData extends BaseViewTypeData implements Serializable {
    private static final long serialVersionUID = -989027830553511159L;
    private String cacheKey;
    public long contactId;
    public transient SparseIntArray descriptionHighlights;
    public Map<String, Integer> descriptionMap;
    public String displayName;
    protected boolean isChecked;
    private boolean isLoaded;
    private boolean isTypeAd;
    public String lookupKey;
    public String nameT9;
    public String nameT9NoZero;
    public Map<String, Integer> namesMap;
    public List<String> normalNumbers;
    public int numberMatchIndexEnd;
    public int numberMatchIndexStart;
    public List<Integer> t9Indexes;
    public transient SparseIntArray textHighlights;
    public String unaccentDescription;
    public String unaccentName;

    public BaseAdapterItemData() {
        this.textHighlights = new SparseIntArray();
        this.descriptionHighlights = new SparseIntArray();
        this.numberMatchIndexStart = -1;
        this.numberMatchIndexEnd = -1;
        this.nameT9NoZero = "";
        this.t9Indexes = new ArrayList();
        this.normalNumbers = new ArrayList();
        this.namesMap = new HashMap();
        this.descriptionMap = new HashMap();
        this.isLoaded = false;
    }

    public BaseAdapterItemData(BaseAdapterItemData baseAdapterItemData) {
        this.textHighlights = new SparseIntArray();
        this.descriptionHighlights = new SparseIntArray();
        this.numberMatchIndexStart = -1;
        this.numberMatchIndexEnd = -1;
        this.nameT9NoZero = "";
        this.t9Indexes = new ArrayList();
        this.normalNumbers = new ArrayList();
        this.namesMap = new HashMap();
        this.descriptionMap = new HashMap();
        this.isLoaded = false;
        this.contactId = baseAdapterItemData.contactId;
        this.displayName = baseAdapterItemData.displayName;
        this.lookupKey = baseAdapterItemData.lookupKey;
        this.textHighlights = baseAdapterItemData.textHighlights;
        this.descriptionHighlights = baseAdapterItemData.descriptionHighlights;
        this.isChecked = baseAdapterItemData.isChecked();
        this.numberMatchIndexStart = baseAdapterItemData.numberMatchIndexStart;
        this.numberMatchIndexEnd = baseAdapterItemData.numberMatchIndexEnd;
        String str = baseAdapterItemData.nameT9;
        this.nameT9 = str;
        StringUtils.m26041b(str, "0", "");
        this.unaccentName = baseAdapterItemData.unaccentName;
        this.unaccentDescription = baseAdapterItemData.unaccentDescription;
        this.normalNumbers = baseAdapterItemData.normalNumbers;
        this.isTypeAd = baseAdapterItemData.isTypeAd;
    }

    public void createCacheKey() {
        this.cacheKey = calculateCacheKey();
    }

    public static void createCacheKeysAsync(Collection<? extends BaseAdapterItemData> collection) {
        if (CollectionUtils.m26076a(collection)) {
            return;
        }
        final CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList(collection);
        new Task() { // from class: com.callapp.contacts.activity.base.BaseAdapterItemData.1
            @Override // com.callapp.contacts.manager.task.Task
            public final void doTask() {
                Iterator it2 = copyOnWriteArrayList.iterator();
                while (it2.hasNext()) {
                    ((BaseAdapterItemData) it2.next()).createCacheKey();
                }
            }
        }.execute();
    }

    public String calculateCacheKey() {
        Phone phone = getPhone();
        return (phone == null || phone == Phone.f29662b) ? "" : String.format("ItemData_%s", phone.m26101a());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof BaseAdapterItemData)) {
            return false;
        }
        BaseAdapterItemData baseAdapterItemData = (BaseAdapterItemData) obj;
        if (includeContactIdInHashcodeAndEquals() && this.contactId != baseAdapterItemData.contactId) {
            return false;
        }
        String str = this.displayName;
        return str == null ? baseAdapterItemData.displayName == null : str.equals(baseAdapterItemData.displayName);
    }

    public String getCacheKey() {
        if (StringUtils.m26059a((CharSequence) this.cacheKey)) {
            createCacheKey();
        }
        return this.cacheKey;
    }

    public long getContactId() {
        return this.contactId;
    }

    public List<String> getNormalNumbers() {
        return this.normalNumbers;
    }

    public abstract Phone getPhone();

    public int hashCode() {
        int i;
        if (includeContactIdInHashcodeAndEquals()) {
            long j = this.contactId;
            i = ((int) (j ^ (j >>> 32))) + 31;
        } else {
            i = 1;
        }
        String str = this.displayName;
        return (i * 31) + (str == null ? 0 : str.hashCode());
    }

    protected abstract boolean includeContactIdInHashcodeAndEquals();

    public boolean isChecked() {
        return this.isChecked;
    }

    public boolean isLoaded() {
        return this.isLoaded;
    }

    public boolean isTypeAd() {
        return this.isTypeAd;
    }

    public void setChecked(boolean z) {
        this.isChecked = z;
    }

    public void setLoaded(boolean z) {
        this.isLoaded = z;
    }

    public void setTypeAd(boolean z) {
        this.isTypeAd = z;
    }
}
