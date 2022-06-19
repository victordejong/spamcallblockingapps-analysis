package com.amazonaws.services.p101s3.model;

import com.google.gson.C15965f;
import com.google.gson.p399a.C15950a;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import proguard.optimize.gson.C21025a;
import proguard.optimize.gson._OptimizedJsonReader;
import proguard.optimize.gson._OptimizedJsonWriter;
/* renamed from: com.amazonaws.services.s3.model.S3KeyFilter */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/S3KeyFilter.class */
public class S3KeyFilter implements Serializable {
    private List<FilterRule> filterRules = new ArrayList();

    /* renamed from: com.amazonaws.services.s3.model.S3KeyFilter$FilterRuleName */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/S3KeyFilter$FilterRuleName.class */
    public enum FilterRuleName {
        Prefix,
        Suffix;

        public final FilterRule newRule() {
            return new FilterRule().withName(toString());
        }

        public final FilterRule newRule(String str) {
            return newRule().withValue(str);
        }
    }

    public void addFilterRule(FilterRule filterRule) {
        this.filterRules.add(filterRule);
    }

    public /* synthetic */ void fromJson$6(C15965f c15965f, JsonReader jsonReader, _OptimizedJsonReader _optimizedjsonreader) {
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            fromJsonField$6(c15965f, jsonReader, _optimizedjsonreader.mo123b(jsonReader));
        }
        jsonReader.endObject();
    }

    protected /* synthetic */ void fromJsonField$6(C15965f c15965f, JsonReader jsonReader, int i) {
        boolean z = jsonReader.peek() != JsonToken.NULL;
        if (i != 39) {
            jsonReader.skipValue();
        } else if (z) {
            this.filterRules = (List) c15965f.m7977a((C15950a) new S3KeyFilterfilterRulesTypeToken()).read(jsonReader);
        } else {
            this.filterRules = null;
            jsonReader.nextNull();
        }
    }

    public List<FilterRule> getFilterRules() {
        return Collections.unmodifiableList(this.filterRules);
    }

    public void setFilterRules(List<FilterRule> list) {
        this.filterRules = new ArrayList(list);
    }

    public /* synthetic */ void toJson$6(C15965f c15965f, JsonWriter jsonWriter, _OptimizedJsonWriter _optimizedjsonwriter) {
        jsonWriter.beginObject();
        toJsonBody$6(c15965f, jsonWriter, _optimizedjsonwriter);
        jsonWriter.endObject();
    }

    protected /* synthetic */ void toJsonBody$6(C15965f c15965f, JsonWriter jsonWriter, _OptimizedJsonWriter _optimizedjsonwriter) {
        if (this != this.filterRules) {
            _optimizedjsonwriter.mo120b(jsonWriter, 39);
            S3KeyFilterfilterRulesTypeToken s3KeyFilterfilterRulesTypeToken = new S3KeyFilterfilterRulesTypeToken();
            List<FilterRule> list = this.filterRules;
            C21025a.m118a(c15965f, s3KeyFilterfilterRulesTypeToken, list).write(jsonWriter, list);
        }
    }

    public S3KeyFilter withFilterRules(List<FilterRule> list) {
        setFilterRules(list);
        return this;
    }

    public S3KeyFilter withFilterRules(FilterRule... filterRuleArr) {
        setFilterRules(Arrays.asList(filterRuleArr));
        return this;
    }
}
