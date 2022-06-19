package com.lidroid.xutils.http.client.multipart;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/http/client/multipart/MinimalFieldHeader.class */
class MinimalFieldHeader implements Iterable<MinimalField> {
    private final List<MinimalField> fields = new LinkedList();
    private final Map<String, List<MinimalField>> fieldMap = new HashMap();

    public void addField(MinimalField minimalField) {
        if (minimalField == null) {
            return;
        }
        String lowerCase = minimalField.getName().toLowerCase(Locale.US);
        List<MinimalField> list = this.fieldMap.get(lowerCase);
        LinkedList linkedList = list;
        if (list == null) {
            linkedList = new LinkedList();
            this.fieldMap.put(lowerCase, linkedList);
        }
        linkedList.add(minimalField);
        this.fields.add(minimalField);
    }

    public MinimalField getField(String str) {
        if (str == null) {
            return null;
        }
        List<MinimalField> list = this.fieldMap.get(str.toLowerCase(Locale.US));
        if (list != null && !list.isEmpty()) {
            return list.get(0);
        }
        return null;
    }

    public List<MinimalField> getFields() {
        return new ArrayList(this.fields);
    }

    public List<MinimalField> getFields(String str) {
        if (str == null) {
            return null;
        }
        List<MinimalField> list = this.fieldMap.get(str.toLowerCase(Locale.US));
        return (list == null || list.isEmpty()) ? Collections.emptyList() : new ArrayList(list);
    }

    @Override // java.lang.Iterable
    public Iterator<MinimalField> iterator() {
        return Collections.unmodifiableList(this.fields).iterator();
    }

    public int removeFields(String str) {
        if (str == null) {
            return 0;
        }
        List<MinimalField> remove = this.fieldMap.remove(str.toLowerCase(Locale.US));
        if (remove == null || remove.isEmpty()) {
            return 0;
        }
        this.fields.removeAll(remove);
        return remove.size();
    }

    public void setField(MinimalField minimalField) {
        if (minimalField == null) {
            return;
        }
        List<MinimalField> list = this.fieldMap.get(minimalField.getName().toLowerCase(Locale.US));
        if (list == null || list.isEmpty()) {
            addField(minimalField);
            return;
        }
        list.clear();
        list.add(minimalField);
        int i = 0;
        Iterator<MinimalField> it = this.fields.iterator();
        int i2 = -1;
        while (true) {
            int i3 = i2;
            if (!it.hasNext()) {
                this.fields.add(i3, minimalField);
                return;
            }
            int i4 = i3;
            if (it.next().getName().equalsIgnoreCase(minimalField.getName())) {
                it.remove();
                i4 = i3;
                if (i3 == -1) {
                    i4 = i;
                }
            }
            i++;
            i2 = i4;
        }
    }

    public String toString() {
        return this.fields.toString();
    }
}
