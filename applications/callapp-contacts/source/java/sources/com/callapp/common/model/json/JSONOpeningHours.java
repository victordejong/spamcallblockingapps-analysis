package com.callapp.common.model.json;

import com.callapp.framework.util.CollectionUtils;
import com.fasterxml.jackson.annotation.JsonIgnore;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONOpeningHours.class */
public class JSONOpeningHours extends CallAppJSONObject {
    private static final long serialVersionUID = -3112065506272890212L;
    private Collection<String> friday;
    private Collection<String> monday;
    private Collection<String> saturday;
    private Collection<String> sunday;
    private Collection<String> thursday;
    private Collection<String> tuesday;
    private Collection<String> wednesday;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        JSONOpeningHours jSONOpeningHours = (JSONOpeningHours) obj;
        Collection<String> collection = this.friday;
        if (collection == null) {
            if (jSONOpeningHours.friday != null) {
                return false;
            }
        } else if (!collection.equals(jSONOpeningHours.friday)) {
            return false;
        }
        Collection<String> collection2 = this.monday;
        if (collection2 == null) {
            if (jSONOpeningHours.monday != null) {
                return false;
            }
        } else if (!collection2.equals(jSONOpeningHours.monday)) {
            return false;
        }
        Collection<String> collection3 = this.saturday;
        if (collection3 == null) {
            if (jSONOpeningHours.saturday != null) {
                return false;
            }
        } else if (!collection3.equals(jSONOpeningHours.saturday)) {
            return false;
        }
        Collection<String> collection4 = this.sunday;
        if (collection4 == null) {
            if (jSONOpeningHours.sunday != null) {
                return false;
            }
        } else if (!collection4.equals(jSONOpeningHours.sunday)) {
            return false;
        }
        Collection<String> collection5 = this.thursday;
        if (collection5 == null) {
            if (jSONOpeningHours.thursday != null) {
                return false;
            }
        } else if (!collection5.equals(jSONOpeningHours.thursday)) {
            return false;
        }
        Collection<String> collection6 = this.tuesday;
        if (collection6 == null) {
            if (jSONOpeningHours.tuesday != null) {
                return false;
            }
        } else if (!collection6.equals(jSONOpeningHours.tuesday)) {
            return false;
        }
        Collection<String> collection7 = this.wednesday;
        return collection7 == null ? jSONOpeningHours.wednesday == null : collection7.equals(jSONOpeningHours.wednesday);
    }

    public Collection<String> getFriday() {
        return this.friday;
    }

    @JsonIgnore
    public Collection<String> getHoursPerDay(int i) {
        switch (i) {
            case 1:
                return getSunday();
            case 2:
                return getMonday();
            case 3:
                return getTuesday();
            case 4:
                return getWednesday();
            case 5:
                return getThursday();
            case 6:
                return getFriday();
            case 7:
                return getSaturday();
            default:
                return null;
        }
    }

    public Collection<String> getMonday() {
        return this.monday;
    }

    @JsonIgnore
    public Map<Integer, Collection<String>> getOpeningHoursMap() {
        HashMap hashMap = new HashMap();
        for (int i = 1; i <= 7; i++) {
            hashMap.put(Integer.valueOf(i - 1), getHoursPerDay(i));
        }
        return hashMap;
    }

    public Collection<String> getSaturday() {
        return this.saturday;
    }

    public Collection<String> getSunday() {
        return this.sunday;
    }

    public Collection<String> getThursday() {
        return this.thursday;
    }

    public Collection<String> getTuesday() {
        return this.tuesday;
    }

    public Collection<String> getWednesday() {
        return this.wednesday;
    }

    public int hashCode() {
        Collection<String> collection = this.friday;
        int i = 0;
        int hashCode = collection == null ? 0 : collection.hashCode();
        Collection<String> collection2 = this.monday;
        int hashCode2 = collection2 == null ? 0 : collection2.hashCode();
        Collection<String> collection3 = this.saturday;
        int hashCode3 = collection3 == null ? 0 : collection3.hashCode();
        Collection<String> collection4 = this.sunday;
        int hashCode4 = collection4 == null ? 0 : collection4.hashCode();
        Collection<String> collection5 = this.thursday;
        int hashCode5 = collection5 == null ? 0 : collection5.hashCode();
        Collection<String> collection6 = this.tuesday;
        int hashCode6 = collection6 == null ? 0 : collection6.hashCode();
        Collection<String> collection7 = this.wednesday;
        if (collection7 != null) {
            i = collection7.hashCode();
        }
        return ((((((((((((hashCode + 31) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + i;
    }

    public boolean isEmpty() {
        for (int i = 1; i <= 7; i++) {
            if (CollectionUtils.m26068b(getHoursPerDay(i))) {
                return false;
            }
        }
        return true;
    }

    public void setFriday(Collection<String> collection) {
        this.friday = collection;
    }

    @JsonIgnore
    public void setHoursPerDay(int i, Collection<String> collection) {
        switch (i) {
            case 1:
                setSunday(collection);
                return;
            case 2:
                setMonday(collection);
                return;
            case 3:
                setTuesday(collection);
                return;
            case 4:
                setWednesday(collection);
                return;
            case 5:
                setThursday(collection);
                return;
            case 6:
                setFriday(collection);
                return;
            case 7:
                setSaturday(collection);
                return;
            default:
                return;
        }
    }

    public void setMonday(Collection<String> collection) {
        this.monday = collection;
    }

    public void setSaturday(Collection<String> collection) {
        this.saturday = collection;
    }

    public void setSunday(Collection<String> collection) {
        this.sunday = collection;
    }

    public void setThursday(Collection<String> collection) {
        this.thursday = collection;
    }

    public void setTuesday(Collection<String> collection) {
        this.tuesday = collection;
    }

    public void setWednesday(Collection<String> collection) {
        this.wednesday = collection;
    }

    public String toString() {
        return "JSONOpeningHours{sunday=" + this.sunday + ", monday=" + this.monday + ", tuesday=" + this.tuesday + ", wednesday=" + this.wednesday + ", thursday=" + this.thursday + ", friday=" + this.friday + ", saturday=" + this.saturday + '}';
    }
}
