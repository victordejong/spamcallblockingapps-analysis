package com.amazonaws.services.s3.model;

import com.google.gson.f;
import com.google.gson.j;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import proguard.optimize.gson._OptimizedJsonReader;
import proguard.optimize.gson._OptimizedJsonWriter;
import proguard.optimize.gson.b;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/OptimizedTopicConfigurationTypeAdapter.class */
public class OptimizedTopicConfigurationTypeAdapter extends j implements b {
    private f gson;
    private _OptimizedJsonReader optimizedJsonReader;
    private _OptimizedJsonWriter optimizedJsonWriter;

    public OptimizedTopicConfigurationTypeAdapter(f fVar, _OptimizedJsonReader _optimizedjsonreader, _OptimizedJsonWriter _optimizedjsonwriter) {
        this.gson = fVar;
        this.optimizedJsonReader = _optimizedjsonreader;
        this.optimizedJsonWriter = _optimizedjsonwriter;
    }

    @Override // com.google.gson.j
    public Object read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.skipValue();
            return null;
        }
        TopicConfiguration topicConfiguration = new TopicConfiguration();
        topicConfiguration.fromJson$24(this.gson, jsonReader, this.optimizedJsonReader);
        return topicConfiguration;
    }

    @Override // com.google.gson.j
    public void write(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
        } else {
            ((TopicConfiguration) obj).toJson$24(this.gson, jsonWriter, this.optimizedJsonWriter);
        }
    }
}
