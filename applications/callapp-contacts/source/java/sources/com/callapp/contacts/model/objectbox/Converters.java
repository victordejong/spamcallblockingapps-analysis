package com.callapp.contacts.model.objectbox;

import android.util.ArrayMap;
import com.callapp.contacts.util.CLog;
import com.callapp.framework.util.StringUtils;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import io.objectbox.converter.PropertyConverter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/Converters.class */
public class Converters {

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/Converters$ListIntegersConverter.class */
    public static class ListIntegersConverter implements PropertyConverter<List<Integer>, String> {
        private ObjectMapper mapper = new ObjectMapper();

        public String convertToDatabaseValue(List<Integer> list) {
            if (list == null) {
                return "";
            }
            try {
                return this.mapper.writerWithDefaultPrettyPrinter().writeValueAsString(list);
            } catch (Exception e) {
                CLog.m27598b(Converters.class, "cant convert list to Jackson str");
                return "";
            }
        }

        public List<Integer> convertToEntityProperty(String str) {
            if (StringUtils.m26059a((CharSequence) str)) {
                return new ArrayList();
            }
            try {
                return (List) this.mapper.readValue(str, new TypeReference<ArrayList<Integer>>() { // from class: com.callapp.contacts.model.objectbox.Converters.ListIntegersConverter.1
                });
            } catch (Exception e) {
                CLog.m27598b(Converters.class, "cant convert string " + str + " to map");
                return new ArrayList();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/Converters$ListStringsConverter.class */
    public static class ListStringsConverter implements PropertyConverter<List<String>, String> {
        private ObjectMapper mapper = new ObjectMapper();

        public String convertToDatabaseValue(List<String> list) {
            if (list == null) {
                return "";
            }
            try {
                return this.mapper.writerWithDefaultPrettyPrinter().writeValueAsString(list);
            } catch (Exception e) {
                CLog.m27598b(Converters.class, "cant convert list to Jackson str");
                return "";
            }
        }

        public List<String> convertToEntityProperty(String str) {
            if (StringUtils.m26059a((CharSequence) str)) {
                return new ArrayList();
            }
            try {
                return (List) this.mapper.readValue(str, new TypeReference<ArrayList<String>>() { // from class: com.callapp.contacts.model.objectbox.Converters.ListStringsConverter.1
                });
            } catch (Exception e) {
                CLog.m27598b(Converters.class, "cant convert string " + str + " to map");
                return new ArrayList();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/Converters$MapStringIntConverter.class */
    public static class MapStringIntConverter implements PropertyConverter<Map<String, Integer>, String> {
        private ObjectMapper mapper = new ObjectMapper();

        public String convertToDatabaseValue(Map<String, Integer> map) {
            if (map == null) {
                return "";
            }
            try {
                return this.mapper.writerWithDefaultPrettyPrinter().writeValueAsString(map);
            } catch (Exception e) {
                CLog.m27598b(Converters.class, "cant convert map to Jackson str");
                return "";
            }
        }

        public Map<String, Integer> convertToEntityProperty(String str) {
            if (StringUtils.m26059a((CharSequence) str)) {
                return new HashMap();
            }
            try {
                return (Map) this.mapper.readValue(str, new TypeReference<HashMap<String, Integer>>() { // from class: com.callapp.contacts.model.objectbox.Converters.MapStringIntConverter.1
                });
            } catch (Exception e) {
                CLog.m27598b(Converters.class, "cant convert string " + str + " to map");
                return new ArrayMap();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/Converters$StringSetConverter.class */
    public static class StringSetConverter implements PropertyConverter<Set<String>, String> {
        public String convertToDatabaseValue(Set<String> set) {
            if (set == null) {
                return null;
            }
            JSONArray jSONArray = new JSONArray();
            for (String str : set) {
                jSONArray.put(str);
            }
            return jSONArray.toString();
        }

        public Set<String> convertToEntityProperty(String str) {
            if (str == null) {
                return null;
            }
            try {
                JSONArray jSONArray = new JSONArray(str);
                HashSet hashSet = new HashSet();
                for (int i = 0; i < jSONArray.length(); i++) {
                    hashSet.add(jSONArray.getString(i));
                }
                return hashSet;
            } catch (Exception e) {
                CLog.m27609a(Converters.class, e);
                return null;
            }
        }
    }
}
