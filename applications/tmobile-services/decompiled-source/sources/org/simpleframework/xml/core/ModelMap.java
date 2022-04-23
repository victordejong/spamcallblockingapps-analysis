package org.simpleframework.xml.core;

import java.util.Iterator;
import java.util.LinkedHashMap;
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/core/ModelMap.class */
class ModelMap extends LinkedHashMap<String, ModelList> implements Iterable<ModelList> {
    private final Detail detail;

    public ModelMap(Detail detail) {
        this.detail = detail;
    }

    public ModelMap getModels() throws Exception {
        ModelMap modelMap = new ModelMap(this.detail);
        for (String str : keySet()) {
            ModelList modelList = get(str);
            ModelList modelList2 = modelList;
            if (modelList != null) {
                modelList2 = modelList.build();
            }
            if (!modelMap.containsKey(str)) {
                modelMap.put(str, modelList2);
            } else {
                throw new PathException("Path with name '%s' is a duplicate in %s ", str, this.detail);
            }
        }
        return modelMap;
    }

    @Override // java.lang.Iterable
    public Iterator<ModelList> iterator() {
        return values().iterator();
    }

    public Model lookup(String str, int i) {
        ModelList modelList = get(str);
        if (modelList != null) {
            return modelList.lookup(i);
        }
        return null;
    }

    public void register(String str, Model model) {
        ModelList modelList = get(str);
        ModelList modelList2 = modelList;
        if (modelList == null) {
            modelList2 = new ModelList();
            put(str, modelList2);
        }
        modelList2.register(model);
    }
}
