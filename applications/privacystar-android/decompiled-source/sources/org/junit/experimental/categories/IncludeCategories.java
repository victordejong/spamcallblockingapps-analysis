package org.junit.experimental.categories;

import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.junit.experimental.categories.Categories;
import org.junit.runner.manipulation.Filter;
/* loaded from: classes2-dex2jar.jar:org/junit/experimental/categories/IncludeCategories.class */
public final class IncludeCategories extends CategoryFilterFactory {

    /* loaded from: classes2-dex2jar.jar:org/junit/experimental/categories/IncludeCategories$IncludesAny.class */
    private static class IncludesAny extends Categories.CategoryFilter {
        public IncludesAny(List<Class<?>> list) {
            this(new HashSet(list));
        }

        public IncludesAny(Set<Class<?>> set) {
            super(true, set, true, null);
        }

        @Override // org.junit.experimental.categories.Categories.CategoryFilter, org.junit.runner.manipulation.Filter
        public String describe() {
            return "includes " + super.describe();
        }
    }

    @Override // org.junit.experimental.categories.CategoryFilterFactory
    protected Filter createFilter(List<Class<?>> list) {
        return new IncludesAny(list);
    }
}
