package com.explorestack.protobuf;

import com.explorestack.protobuf.Descriptors;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/TextFormatParseInfoTree.class */
public class TextFormatParseInfoTree {
    private Map<Descriptors.FieldDescriptor, List<TextFormatParseLocation>> locationsFromField;
    Map<Descriptors.FieldDescriptor, List<TextFormatParseInfoTree>> subtreesFromField;

    /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/TextFormatParseInfoTree$Builder.class */
    public static class Builder {
        private Map<Descriptors.FieldDescriptor, List<TextFormatParseLocation>> locationsFromField;
        private Map<Descriptors.FieldDescriptor, List<Builder>> subtreeBuildersFromField;

        private Builder() {
            this.locationsFromField = new HashMap();
            this.subtreeBuildersFromField = new HashMap();
        }

        public TextFormatParseInfoTree build() {
            return new TextFormatParseInfoTree(this.locationsFromField, this.subtreeBuildersFromField);
        }

        public Builder getBuilderForSubMessageField(Descriptors.FieldDescriptor fieldDescriptor) {
            List<Builder> list = this.subtreeBuildersFromField.get(fieldDescriptor);
            List<Builder> list2 = list;
            if (list == null) {
                list2 = new ArrayList<>();
                this.subtreeBuildersFromField.put(fieldDescriptor, list2);
            }
            Builder builder = new Builder();
            list2.add(builder);
            return builder;
        }

        public Builder setLocation(Descriptors.FieldDescriptor fieldDescriptor, TextFormatParseLocation textFormatParseLocation) {
            List<TextFormatParseLocation> list = this.locationsFromField.get(fieldDescriptor);
            List<TextFormatParseLocation> list2 = list;
            if (list == null) {
                list2 = new ArrayList<>();
                this.locationsFromField.put(fieldDescriptor, list2);
            }
            list2.add(textFormatParseLocation);
            return this;
        }
    }

    private TextFormatParseInfoTree(Map<Descriptors.FieldDescriptor, List<TextFormatParseLocation>> map, Map<Descriptors.FieldDescriptor, List<Builder>> map2) {
        HashMap hashMap = new HashMap();
        for (Map.Entry<Descriptors.FieldDescriptor, List<TextFormatParseLocation>> entry : map.entrySet()) {
            hashMap.put(entry.getKey(), Collections.unmodifiableList(entry.getValue()));
        }
        this.locationsFromField = Collections.unmodifiableMap(hashMap);
        HashMap hashMap2 = new HashMap();
        for (Map.Entry<Descriptors.FieldDescriptor, List<Builder>> entry2 : map2.entrySet()) {
            ArrayList arrayList = new ArrayList();
            for (Builder builder : entry2.getValue()) {
                arrayList.add(builder.build());
            }
            hashMap2.put(entry2.getKey(), Collections.unmodifiableList(arrayList));
        }
        this.subtreesFromField = Collections.unmodifiableMap(hashMap2);
    }

    public static Builder builder() {
        return new Builder();
    }

    private static <T> T getFromList(List<T> list, int i, Descriptors.FieldDescriptor fieldDescriptor) {
        if (i < list.size() && i >= 0) {
            return list.get(i);
        }
        throw new IllegalArgumentException(String.format("Illegal index field: %s, index %d", fieldDescriptor == null ? "<null>" : fieldDescriptor.getName(), Integer.valueOf(i)));
    }

    public TextFormatParseLocation getLocation(Descriptors.FieldDescriptor fieldDescriptor, int i) {
        return (TextFormatParseLocation) getFromList(getLocations(fieldDescriptor), i, fieldDescriptor);
    }

    public List<TextFormatParseLocation> getLocations(Descriptors.FieldDescriptor fieldDescriptor) {
        List<TextFormatParseLocation> list = this.locationsFromField.get(fieldDescriptor);
        List<TextFormatParseLocation> list2 = list;
        if (list == null) {
            list2 = Collections.emptyList();
        }
        return list2;
    }

    public TextFormatParseInfoTree getNestedTree(Descriptors.FieldDescriptor fieldDescriptor, int i) {
        return (TextFormatParseInfoTree) getFromList(getNestedTrees(fieldDescriptor), i, fieldDescriptor);
    }

    public List<TextFormatParseInfoTree> getNestedTrees(Descriptors.FieldDescriptor fieldDescriptor) {
        List<TextFormatParseInfoTree> list = this.subtreesFromField.get(fieldDescriptor);
        List<TextFormatParseInfoTree> list2 = list;
        if (list == null) {
            list2 = Collections.emptyList();
        }
        return list2;
    }
}
