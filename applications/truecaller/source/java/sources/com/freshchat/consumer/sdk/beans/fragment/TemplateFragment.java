package com.freshchat.consumer.sdk.beans.fragment;

import com.freshchat.consumer.sdk.p057j.C1597ab;
import com.freshchat.consumer.sdk.p057j.C1716k;
import com.razorpay.AnalyticsConstants;
import e.m.e.d0.b;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/fragment/TemplateFragment.class */
public abstract class TemplateFragment extends MessageFragment {
    @C1597ab.AbstractC1600c
    private final HashMap<SectionKey, List<MessageFragment>> sectionMap = new HashMap<>();
    private List<Section> sections;
    private final String templateType;

    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/fragment/TemplateFragment$Section.class */
    public static class Section {
        private List<MessageFragment> fragments;
        @b(AnalyticsConstants.NAME)
        private SectionKey sectionKey;

        public List<MessageFragment> getFragments() {
            return this.fragments;
        }

        public SectionKey getSectionKey() {
            return this.sectionKey;
        }

        public void setFragments(List<MessageFragment> list) {
            this.fragments = list;
        }

        public void setSectionKey(SectionKey sectionKey) {
            this.sectionKey = sectionKey;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Section{sectionKey='");
            m8728C.append(this.sectionKey);
            m8728C.append('\'');
            m8728C.append(", fragments=");
            m8728C.append(this.fragments);
            m8728C.append('}');
            return m8728C.toString();
        }
    }

    public TemplateFragment(String str) {
        super(FragmentType.TEMPLATE.asInt());
        this.templateType = str;
    }

    public List<MessageFragment> getFragmentsForSection(SectionKey sectionKey) {
        if (C1716k.isEmpty(this.sections)) {
            return null;
        }
        if (C1716k.m39897c(this.sectionMap)) {
            for (Section section : this.sections) {
                this.sectionMap.put(section.getSectionKey(), section.fragments);
            }
        }
        return this.sectionMap.get(sectionKey);
    }

    public List<Section> getSections() {
        return this.sections;
    }

    public MessageFragment getSingleFragmentFromSection(SectionKey sectionKey) {
        List<MessageFragment> fragmentsForSection = getFragmentsForSection(sectionKey);
        return C1716k.m39902a(fragmentsForSection) ? fragmentsForSection.get(0) : null;
    }

    public String getTemplateType() {
        return this.templateType;
    }

    public void replaceSection(SectionKey sectionKey, List<MessageFragment> list) {
        Section section;
        if (C1716k.isEmpty(this.sections)) {
            return;
        }
        this.sectionMap.clear();
        Iterator<Section> it = this.sections.iterator();
        do {
            section = null;
            if (!it.hasNext()) {
                break;
            }
            section = it.next();
        } while (section.getSectionKey() != sectionKey);
        if (section != null) {
            this.sections.remove(section);
        }
        Section section2 = new Section();
        section2.setSectionKey(sectionKey);
        section2.setFragments(list);
        this.sections.add(section2);
    }

    public void setSections(List<Section> list) {
        this.sections = list;
        this.sectionMap.clear();
    }

    @Override // com.freshchat.consumer.sdk.beans.fragment.MessageFragment
    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("TemplateFragment{messageFragment='");
        C22128a.m8678P0(m8728C, super.toString(), '\'', ", templateType='");
        C22128a.m8678P0(m8728C, this.templateType, '\'', ", sections=");
        m8728C.append(this.sections);
        m8728C.append(", sectionMap=");
        m8728C.append(this.sectionMap);
        m8728C.append('}');
        return m8728C.toString();
    }
}
