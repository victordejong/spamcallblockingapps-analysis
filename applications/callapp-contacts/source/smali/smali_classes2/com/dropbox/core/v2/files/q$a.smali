.class final Lcom/dropbox/core/v2/files/q$a;
.super Lcom/dropbox/core/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/e<",
        "Lcom/dropbox/core/v2/files/q;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/files/q$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 778
    new-instance v0, Lcom/dropbox/core/v2/files/q$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/q$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/q$a;->a:Lcom/dropbox/core/v2/files/q$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 777
    invoke-direct {p0}, Lcom/dropbox/core/a/e;-><init>()V

    return-void
.end method

.method public static a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/q;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 854
    invoke-static/range {p0 .. p0}, Lcom/dropbox/core/v2/files/q$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 855
    invoke-static/range {p0 .. p0}, Lcom/dropbox/core/v2/files/q$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "file"

    .line 856
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v2, v1

    :cond_1
    if-nez v2, :cond_1c

    .line 873
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v4, v1

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v11, v8

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v18, v16

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    .line 879
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    sget-object v9, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v9, :cond_14

    .line 880
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v3

    .line 881
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const-string v9, "name"

    .line 882
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 10052
    sget-object v3, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 883
    invoke-virtual {v3, v0}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v9, "id"

    .line 885
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 11052
    sget-object v3, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 886
    invoke-virtual {v3, v0}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v9, "client_modified"

    .line 888
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 11056
    sget-object v3, Lcom/dropbox/core/a/d$b;->a:Lcom/dropbox/core/a/d$b;

    .line 889
    invoke-virtual {v3, v0}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ljava/util/Date;

    goto :goto_0

    :cond_4
    const-string v9, "server_modified"

    .line 891
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 12056
    sget-object v3, Lcom/dropbox/core/a/d$b;->a:Lcom/dropbox/core/a/d$b;

    .line 892
    invoke-virtual {v3, v0}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Ljava/util/Date;

    goto :goto_0

    :cond_5
    const-string v9, "rev"

    .line 894
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 13052
    sget-object v3, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 895
    invoke-virtual {v3, v0}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Ljava/lang/String;

    goto :goto_0

    :cond_6
    const-string v9, "size"

    .line 897
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 14020
    sget-object v1, Lcom/dropbox/core/a/d$e;->a:Lcom/dropbox/core/a/d$e;

    .line 898
    invoke-virtual {v1, v0}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    goto :goto_0

    :cond_7
    const-string v9, "path_lower"

    .line 900
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 14052
    sget-object v3, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 901
    invoke-static {v3}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    const-string v9, "path_display"

    .line 903
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 15052
    sget-object v3, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 904
    invoke-static {v3}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    const-string v9, "parent_shared_folder_id"

    .line 906
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 16052
    sget-object v3, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 907
    invoke-static {v3}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Ljava/lang/String;

    goto/16 :goto_0

    :cond_a
    const-string v9, "media_info"

    .line 909
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 910
    sget-object v3, Lcom/dropbox/core/v2/files/aj$a;->a:Lcom/dropbox/core/v2/files/aj$a;

    invoke-static {v3}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lcom/dropbox/core/v2/files/aj;

    goto/16 :goto_0

    :cond_b
    const-string v9, "symlink_info"

    .line 912
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 913
    sget-object v3, Lcom/dropbox/core/v2/files/ax$a;->a:Lcom/dropbox/core/v2/files/ax$a;

    invoke-static {v3}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/e;)Lcom/dropbox/core/a/e;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/dropbox/core/a/e;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lcom/dropbox/core/v2/files/ax;

    goto/16 :goto_0

    :cond_c
    const-string v9, "sharing_info"

    .line 915
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 916
    sget-object v3, Lcom/dropbox/core/v2/files/s$a;->a:Lcom/dropbox/core/v2/files/s$a;

    invoke-static {v3}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/e;)Lcom/dropbox/core/a/e;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/dropbox/core/a/e;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Lcom/dropbox/core/v2/files/s;

    goto/16 :goto_0

    :cond_d
    const-string v9, "is_downloadable"

    .line 918
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 17044
    sget-object v2, Lcom/dropbox/core/a/d$a;->a:Lcom/dropbox/core/a/d$a;

    .line 919
    invoke-virtual {v2, v0}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    goto/16 :goto_0

    :cond_e
    const-string v9, "export_info"

    .line 921
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 922
    sget-object v3, Lcom/dropbox/core/v2/files/m$a;->a:Lcom/dropbox/core/v2/files/m$a;

    invoke-static {v3}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/e;)Lcom/dropbox/core/a/e;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/dropbox/core/a/e;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Lcom/dropbox/core/v2/files/m;

    goto/16 :goto_0

    :cond_f
    const-string v9, "property_groups"

    .line 924
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 925
    sget-object v3, Lcom/dropbox/core/v2/fileproperties/j$a;->a:Lcom/dropbox/core/v2/fileproperties/j$a;

    invoke-static {v3}, Lcom/dropbox/core/a/d;->b(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v3

    invoke-static {v3}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Ljava/util/List;

    goto/16 :goto_0

    :cond_10
    const-string v9, "has_explicit_shared_members"

    .line 927
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 18044
    sget-object v3, Lcom/dropbox/core/a/d$a;->a:Lcom/dropbox/core/a/d$a;

    .line 928
    invoke-static {v3}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v20, v3

    check-cast v20, Ljava/lang/Boolean;

    goto/16 :goto_0

    :cond_11
    const-string v9, "content_hash"

    .line 930
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 18052
    sget-object v3, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 931
    invoke-static {v3}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v21, v3

    check-cast v21, Ljava/lang/String;

    goto/16 :goto_0

    :cond_12
    const-string v9, "file_lock_info"

    .line 933
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 934
    sget-object v3, Lcom/dropbox/core/v2/files/p$a;->a:Lcom/dropbox/core/v2/files/p$a;

    invoke-static {v3}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/e;)Lcom/dropbox/core/a/e;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/dropbox/core/a/e;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v22, v3

    check-cast v22, Lcom/dropbox/core/v2/files/p;

    goto/16 :goto_0

    .line 937
    :cond_13
    invoke-static/range {p0 .. p0}, Lcom/dropbox/core/v2/files/q$a;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto/16 :goto_0

    :cond_14
    if-eqz v4, :cond_1b

    if-eqz v5, :cond_1a

    if-eqz v6, :cond_19

    if-eqz v7, :cond_18

    if-eqz v8, :cond_17

    if-eqz v1, :cond_16

    .line 958
    new-instance v23, Lcom/dropbox/core/v2/files/q;

    move-object/from16 v3, v23

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    invoke-direct/range {v3 .. v22}, Lcom/dropbox/core/v2/files/q;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/files/aj;Lcom/dropbox/core/v2/files/ax;Lcom/dropbox/core/v2/files/s;ZLcom/dropbox/core/v2/files/m;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/String;Lcom/dropbox/core/v2/files/p;)V

    if-nez p1, :cond_15

    .line 964
    invoke-static/range {p0 .. p0}, Lcom/dropbox/core/v2/files/q$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 966
    :cond_15
    invoke-virtual/range {v23 .. v23}, Lcom/dropbox/core/v2/files/q;->c()Ljava/lang/String;

    invoke-static/range {v23 .. v23}, Lcom/dropbox/core/a/b;->a(Ljava/lang/Object;)V

    return-object v23

    .line 956
    :cond_16
    new-instance v1, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v2, "Required field \"size\" missing."

    invoke-direct {v1, v0, v2}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v1

    .line 953
    :cond_17
    new-instance v1, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v2, "Required field \"rev\" missing."

    invoke-direct {v1, v0, v2}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v1

    .line 950
    :cond_18
    new-instance v1, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v2, "Required field \"server_modified\" missing."

    invoke-direct {v1, v0, v2}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v1

    .line 947
    :cond_19
    new-instance v1, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v2, "Required field \"client_modified\" missing."

    invoke-direct {v1, v0, v2}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v1

    .line 944
    :cond_1a
    new-instance v1, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v2, "Required field \"id\" missing."

    invoke-direct {v1, v0, v2}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v1

    .line 941
    :cond_1b
    new-instance v1, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v2, "Required field \"name\" missing."

    invoke-direct {v1, v0, v2}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v1

    .line 961
    :cond_1c
    new-instance v1, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No subtype found that matches tag: \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final a(Lcom/dropbox/core/v2/files/q;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    if-nez p3, :cond_0

    .line 783
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    :cond_0
    const-string v0, "file"

    .line 785
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/q$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "name"

    .line 786
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 1052
    sget-object v0, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 787
    iget-object v1, p1, Lcom/dropbox/core/v2/files/q;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "id"

    .line 788
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2052
    sget-object v0, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 789
    iget-object v1, p1, Lcom/dropbox/core/v2/files/q;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "client_modified"

    .line 790
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2056
    sget-object v0, Lcom/dropbox/core/a/d$b;->a:Lcom/dropbox/core/a/d$b;

    .line 791
    iget-object v1, p1, Lcom/dropbox/core/v2/files/q;->b:Ljava/util/Date;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "server_modified"

    .line 792
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 3056
    sget-object v0, Lcom/dropbox/core/a/d$b;->a:Lcom/dropbox/core/a/d$b;

    .line 793
    iget-object v1, p1, Lcom/dropbox/core/v2/files/q;->c:Ljava/util/Date;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "rev"

    .line 794
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 4052
    sget-object v0, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 795
    iget-object v1, p1, Lcom/dropbox/core/v2/files/q;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "size"

    .line 796
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 5020
    sget-object v0, Lcom/dropbox/core/a/d$e;->a:Lcom/dropbox/core/a/d$e;

    .line 797
    iget-wide v1, p1, Lcom/dropbox/core/v2/files/q;->e:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 798
    iget-object v0, p1, Lcom/dropbox/core/v2/files/q;->p:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "path_lower"

    .line 799
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 5052
    sget-object v0, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 800
    invoke-static {v0}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/q;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 802
    :cond_1
    iget-object v0, p1, Lcom/dropbox/core/v2/files/q;->q:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "path_display"

    .line 803
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 6052
    sget-object v0, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 804
    invoke-static {v0}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/q;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 806
    :cond_2
    iget-object v0, p1, Lcom/dropbox/core/v2/files/q;->r:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, "parent_shared_folder_id"

    .line 807
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 7052
    sget-object v0, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 808
    invoke-static {v0}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/q;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 810
    :cond_3
    iget-object v0, p1, Lcom/dropbox/core/v2/files/q;->f:Lcom/dropbox/core/v2/files/aj;

    if-eqz v0, :cond_4

    const-string v0, "media_info"

    .line 811
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 812
    sget-object v0, Lcom/dropbox/core/v2/files/aj$a;->a:Lcom/dropbox/core/v2/files/aj$a;

    invoke-static {v0}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/q;->f:Lcom/dropbox/core/v2/files/aj;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 814
    :cond_4
    iget-object v0, p1, Lcom/dropbox/core/v2/files/q;->g:Lcom/dropbox/core/v2/files/ax;

    if-eqz v0, :cond_5

    const-string v0, "symlink_info"

    .line 815
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 816
    sget-object v0, Lcom/dropbox/core/v2/files/ax$a;->a:Lcom/dropbox/core/v2/files/ax$a;

    invoke-static {v0}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/e;)Lcom/dropbox/core/a/e;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/q;->g:Lcom/dropbox/core/v2/files/ax;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/a/e;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 818
    :cond_5
    iget-object v0, p1, Lcom/dropbox/core/v2/files/q;->h:Lcom/dropbox/core/v2/files/s;

    if-eqz v0, :cond_6

    const-string v0, "sharing_info"

    .line 819
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 820
    sget-object v0, Lcom/dropbox/core/v2/files/s$a;->a:Lcom/dropbox/core/v2/files/s$a;

    invoke-static {v0}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/e;)Lcom/dropbox/core/a/e;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/q;->h:Lcom/dropbox/core/v2/files/s;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/a/e;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    :cond_6
    const-string v0, "is_downloadable"

    .line 822
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 8044
    sget-object v0, Lcom/dropbox/core/a/d$a;->a:Lcom/dropbox/core/a/d$a;

    .line 823
    iget-boolean v1, p1, Lcom/dropbox/core/v2/files/q;->i:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 824
    iget-object v0, p1, Lcom/dropbox/core/v2/files/q;->j:Lcom/dropbox/core/v2/files/m;

    if-eqz v0, :cond_7

    const-string v0, "export_info"

    .line 825
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 826
    sget-object v0, Lcom/dropbox/core/v2/files/m$a;->a:Lcom/dropbox/core/v2/files/m$a;

    invoke-static {v0}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/e;)Lcom/dropbox/core/a/e;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/q;->j:Lcom/dropbox/core/v2/files/m;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/a/e;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 828
    :cond_7
    iget-object v0, p1, Lcom/dropbox/core/v2/files/q;->k:Ljava/util/List;

    if-eqz v0, :cond_8

    const-string v0, "property_groups"

    .line 829
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 830
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/j$a;->a:Lcom/dropbox/core/v2/fileproperties/j$a;

    invoke-static {v0}, Lcom/dropbox/core/a/d;->b(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/q;->k:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 832
    :cond_8
    iget-object v0, p1, Lcom/dropbox/core/v2/files/q;->l:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    const-string v0, "has_explicit_shared_members"

    .line 833
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 9044
    sget-object v0, Lcom/dropbox/core/a/d$a;->a:Lcom/dropbox/core/a/d$a;

    .line 834
    invoke-static {v0}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/q;->l:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 836
    :cond_9
    iget-object v0, p1, Lcom/dropbox/core/v2/files/q;->m:Ljava/lang/String;

    if-eqz v0, :cond_a

    const-string v0, "content_hash"

    .line 837
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 9052
    sget-object v0, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 838
    invoke-static {v0}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/q;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 840
    :cond_a
    iget-object v0, p1, Lcom/dropbox/core/v2/files/q;->n:Lcom/dropbox/core/v2/files/p;

    if-eqz v0, :cond_b

    const-string v0, "file_lock_info"

    .line 841
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 842
    sget-object v0, Lcom/dropbox/core/v2/files/p$a;->a:Lcom/dropbox/core/v2/files/p$a;

    invoke-static {v0}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/e;)Lcom/dropbox/core/a/e;

    move-result-object v0

    iget-object p1, p1, Lcom/dropbox/core/v2/files/q;->n:Lcom/dropbox/core/v2/files/p;

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/a/e;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    :cond_b
    if-nez p3, :cond_c

    .line 845
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    :cond_c
    return-void
.end method

.method public final synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 777
    invoke-static {p1, p2}, Lcom/dropbox/core/v2/files/q$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/q;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 777
    check-cast p1, Lcom/dropbox/core/v2/files/q;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/files/q$a;->a(Lcom/dropbox/core/v2/files/q;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
