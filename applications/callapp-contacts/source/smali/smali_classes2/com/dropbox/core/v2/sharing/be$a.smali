.class final Lcom/dropbox/core/v2/sharing/be$a;
.super Lcom/dropbox/core/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/be;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/e<",
        "Lcom/dropbox/core/v2/sharing/be;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/be$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 601
    new-instance v0, Lcom/dropbox/core/v2/sharing/be$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/be$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/be$a;->a:Lcom/dropbox/core/v2/sharing/be$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 600
    invoke-direct {p0}, Lcom/dropbox/core/a/e;-><init>()V

    return-void
.end method

.method public static a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/be;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 664
    invoke-static/range {p0 .. p0}, Lcom/dropbox/core/v2/sharing/be$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 665
    invoke-static/range {p0 .. p0}, Lcom/dropbox/core/v2/sharing/be$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_1b

    .line 683
    sget-object v2, Lcom/dropbox/core/v2/sharing/a;->INHERIT:Lcom/dropbox/core/v2/sharing/a;

    move-object v4, v1

    move-object v7, v4

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v2

    move-object/from16 v2, v18

    .line 684
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v5, :cond_11

    .line 685
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v3

    .line 686
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const-string v5, "access_type"

    .line 687
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 688
    sget-object v3, Lcom/dropbox/core/v2/sharing/b$a;->a:Lcom/dropbox/core/v2/sharing/b$a;

    invoke-static/range {p0 .. p0}, Lcom/dropbox/core/v2/sharing/b$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/b;

    move-result-object v4

    goto :goto_1

    :cond_1
    const-string v5, "is_inside_team_folder"

    .line 690
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 9044
    sget-object v1, Lcom/dropbox/core/a/d$a;->a:Lcom/dropbox/core/a/d$a;

    .line 691
    invoke-virtual {v1, v0}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    goto :goto_1

    :cond_2
    const-string v5, "is_team_folder"

    .line 693
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 10044
    sget-object v2, Lcom/dropbox/core/a/d$a;->a:Lcom/dropbox/core/a/d$a;

    .line 694
    invoke-virtual {v2, v0}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    goto :goto_1

    :cond_3
    const-string v5, "name"

    .line 696
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 10052
    sget-object v3, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 697
    invoke-virtual {v3, v0}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string v5, "policy"

    .line 699
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 700
    sget-object v3, Lcom/dropbox/core/v2/sharing/r$a;->a:Lcom/dropbox/core/v2/sharing/r$a;

    invoke-virtual {v3, v0}, Lcom/dropbox/core/v2/sharing/r$a;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lcom/dropbox/core/v2/sharing/r;

    goto :goto_1

    :cond_5
    const-string v5, "preview_url"

    .line 702
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 11052
    sget-object v3, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 703
    invoke-virtual {v3, v0}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Ljava/lang/String;

    goto :goto_1

    :cond_6
    const-string v5, "shared_folder_id"

    .line 705
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 12052
    sget-object v3, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 706
    invoke-virtual {v3, v0}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Ljava/lang/String;

    goto/16 :goto_1

    :cond_7
    const-string v5, "time_invited"

    .line 708
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 12056
    sget-object v3, Lcom/dropbox/core/a/d$b;->a:Lcom/dropbox/core/a/d$b;

    .line 709
    invoke-virtual {v3, v0}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Ljava/util/Date;

    goto/16 :goto_1

    :cond_8
    const-string v5, "owner_display_names"

    .line 711
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 13052
    sget-object v3, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 712
    invoke-static {v3}, Lcom/dropbox/core/a/d;->b(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v3

    invoke-static {v3}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Ljava/util/List;

    goto/16 :goto_1

    :cond_9
    const-string v5, "owner_team"

    .line 714
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 715
    sget-object v3, Lcom/dropbox/core/v2/users/d$a;->a:Lcom/dropbox/core/v2/users/d$a;

    invoke-static {v3}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/e;)Lcom/dropbox/core/a/e;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/dropbox/core/a/e;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lcom/dropbox/core/v2/users/d;

    goto/16 :goto_1

    :cond_a
    const-string v5, "parent_shared_folder_id"

    .line 717
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 14052
    sget-object v3, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 718
    invoke-static {v3}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Ljava/lang/String;

    goto/16 :goto_1

    :cond_b
    const-string v5, "path_lower"

    .line 720
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 15052
    sget-object v3, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 721
    invoke-static {v3}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Ljava/lang/String;

    goto/16 :goto_1

    :cond_c
    const-string v5, "parent_folder_name"

    .line 723
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 16052
    sget-object v3, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 724
    invoke-static {v3}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Ljava/lang/String;

    goto/16 :goto_1

    :cond_d
    const-string v5, "link_metadata"

    .line 726
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 727
    sget-object v3, Lcom/dropbox/core/v2/sharing/ba$a;->a:Lcom/dropbox/core/v2/sharing/ba$a;

    invoke-static {v3}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/e;)Lcom/dropbox/core/a/e;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/dropbox/core/a/e;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Lcom/dropbox/core/v2/sharing/ba;

    goto/16 :goto_1

    :cond_e
    const-string v5, "permissions"

    .line 729
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 730
    sget-object v3, Lcom/dropbox/core/v2/sharing/q$a;->a:Lcom/dropbox/core/v2/sharing/q$a;

    invoke-static {v3}, Lcom/dropbox/core/a/d;->b(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v3

    invoke-static {v3}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Ljava/util/List;

    goto/16 :goto_1

    :cond_f
    const-string v5, "access_inheritance"

    .line 732
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 733
    sget-object v3, Lcom/dropbox/core/v2/sharing/a$a;->a:Lcom/dropbox/core/v2/sharing/a$a;

    invoke-static/range {p0 .. p0}, Lcom/dropbox/core/v2/sharing/a$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/a;

    move-result-object v19

    goto/16 :goto_1

    .line 736
    :cond_10
    invoke-static/range {p0 .. p0}, Lcom/dropbox/core/v2/sharing/be$a;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto/16 :goto_1

    :cond_11
    if-eqz v4, :cond_1a

    if-eqz v1, :cond_19

    if-eqz v2, :cond_18

    if-eqz v7, :cond_17

    if-eqz v8, :cond_16

    if-eqz v9, :cond_15

    if-eqz v10, :cond_14

    if-eqz v11, :cond_13

    .line 763
    new-instance v20, Lcom/dropbox/core/v2/sharing/be;

    move-object/from16 v3, v20

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-direct/range {v3 .. v19}, Lcom/dropbox/core/v2/sharing/be;-><init>(Lcom/dropbox/core/v2/sharing/b;ZZLjava/lang/String;Lcom/dropbox/core/v2/sharing/r;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Lcom/dropbox/core/v2/users/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/ba;Ljava/util/List;Lcom/dropbox/core/v2/sharing/a;)V

    if-nez p1, :cond_12

    .line 769
    invoke-static/range {p0 .. p0}, Lcom/dropbox/core/v2/sharing/be$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 771
    :cond_12
    invoke-virtual/range {v20 .. v20}, Lcom/dropbox/core/v2/sharing/be;->a()Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Lcom/dropbox/core/a/b;->a(Ljava/lang/Object;)V

    return-object v20

    .line 761
    :cond_13
    new-instance v1, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v2, "Required field \"time_invited\" missing."

    invoke-direct {v1, v0, v2}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v1

    .line 758
    :cond_14
    new-instance v1, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v2, "Required field \"shared_folder_id\" missing."

    invoke-direct {v1, v0, v2}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v1

    .line 755
    :cond_15
    new-instance v1, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v2, "Required field \"preview_url\" missing."

    invoke-direct {v1, v0, v2}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v1

    .line 752
    :cond_16
    new-instance v1, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v2, "Required field \"policy\" missing."

    invoke-direct {v1, v0, v2}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v1

    .line 749
    :cond_17
    new-instance v1, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v2, "Required field \"name\" missing."

    invoke-direct {v1, v0, v2}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v1

    .line 746
    :cond_18
    new-instance v1, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v2, "Required field \"is_team_folder\" missing."

    invoke-direct {v1, v0, v2}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v1

    .line 743
    :cond_19
    new-instance v1, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v2, "Required field \"is_inside_team_folder\" missing."

    invoke-direct {v1, v0, v2}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v1

    .line 740
    :cond_1a
    new-instance v1, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v2, "Required field \"access_type\" missing."

    invoke-direct {v1, v0, v2}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v1

    .line 766
    :cond_1b
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

.method public static a(Lcom/dropbox/core/v2/sharing/be;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 606
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    :cond_0
    const-string v0, "access_type"

    .line 608
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 609
    sget-object v0, Lcom/dropbox/core/v2/sharing/b$a;->a:Lcom/dropbox/core/v2/sharing/b$a;

    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/be;->i:Lcom/dropbox/core/v2/sharing/b;

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/sharing/b$a;->a(Lcom/dropbox/core/v2/sharing/b;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "is_inside_team_folder"

    .line 610
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 1044
    sget-object v0, Lcom/dropbox/core/a/d$a;->a:Lcom/dropbox/core/a/d$a;

    .line 611
    iget-boolean v1, p0, Lcom/dropbox/core/v2/sharing/be;->j:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "is_team_folder"

    .line 612
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2044
    sget-object v0, Lcom/dropbox/core/a/d$a;->a:Lcom/dropbox/core/a/d$a;

    .line 613
    iget-boolean v1, p0, Lcom/dropbox/core/v2/sharing/be;->k:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "name"

    .line 614
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2052
    sget-object v0, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 615
    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/be;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "policy"

    .line 616
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 617
    sget-object v0, Lcom/dropbox/core/v2/sharing/r$a;->a:Lcom/dropbox/core/v2/sharing/r$a;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/be;->d:Lcom/dropbox/core/v2/sharing/r;

    invoke-virtual {v0, v1, p1}, Lcom/dropbox/core/v2/sharing/r$a;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "preview_url"

    .line 618
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 3052
    sget-object v0, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 619
    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/be;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "shared_folder_id"

    .line 620
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 4052
    sget-object v0, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 621
    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/be;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "time_invited"

    .line 622
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 4056
    sget-object v0, Lcom/dropbox/core/a/d$b;->a:Lcom/dropbox/core/a/d$b;

    .line 623
    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/be;->g:Ljava/util/Date;

    invoke-virtual {v0, v1, p1}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 624
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/be;->l:Ljava/util/List;

    if-eqz v0, :cond_1

    const-string v0, "owner_display_names"

    .line 625
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 5052
    sget-object v0, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 626
    invoke-static {v0}, Lcom/dropbox/core/a/d;->b(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/be;->l:Ljava/util/List;

    invoke-virtual {v0, v1, p1}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 628
    :cond_1
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/be;->m:Lcom/dropbox/core/v2/users/d;

    if-eqz v0, :cond_2

    const-string v0, "owner_team"

    .line 629
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 630
    sget-object v0, Lcom/dropbox/core/v2/users/d$a;->a:Lcom/dropbox/core/v2/users/d$a;

    invoke-static {v0}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/e;)Lcom/dropbox/core/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/be;->m:Lcom/dropbox/core/v2/users/d;

    invoke-virtual {v0, v1, p1}, Lcom/dropbox/core/a/e;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 632
    :cond_2
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/be;->n:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, "parent_shared_folder_id"

    .line 633
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 6052
    sget-object v0, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 634
    invoke-static {v0}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/be;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 636
    :cond_3
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/be;->o:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v0, "path_lower"

    .line 637
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 7052
    sget-object v0, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 638
    invoke-static {v0}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/be;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 640
    :cond_4
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/be;->p:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string v0, "parent_folder_name"

    .line 641
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 8052
    sget-object v0, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 642
    invoke-static {v0}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/be;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 644
    :cond_5
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/be;->a:Lcom/dropbox/core/v2/sharing/ba;

    if-eqz v0, :cond_6

    const-string v0, "link_metadata"

    .line 645
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 646
    sget-object v0, Lcom/dropbox/core/v2/sharing/ba$a;->a:Lcom/dropbox/core/v2/sharing/ba$a;

    invoke-static {v0}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/e;)Lcom/dropbox/core/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/be;->a:Lcom/dropbox/core/v2/sharing/ba;

    invoke-virtual {v0, v1, p1}, Lcom/dropbox/core/a/e;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 648
    :cond_6
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/be;->c:Ljava/util/List;

    if-eqz v0, :cond_7

    const-string v0, "permissions"

    .line 649
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 650
    sget-object v0, Lcom/dropbox/core/v2/sharing/q$a;->a:Lcom/dropbox/core/v2/sharing/q$a;

    invoke-static {v0}, Lcom/dropbox/core/a/d;->b(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/be;->c:Ljava/util/List;

    invoke-virtual {v0, v1, p1}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    :cond_7
    const-string v0, "access_inheritance"

    .line 652
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 653
    sget-object v0, Lcom/dropbox/core/v2/sharing/a$a;->a:Lcom/dropbox/core/v2/sharing/a$a;

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/be;->h:Lcom/dropbox/core/v2/sharing/a;

    invoke-static {p0, p1}, Lcom/dropbox/core/v2/sharing/a$a;->a(Lcom/dropbox/core/v2/sharing/a;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    if-nez p2, :cond_8

    .line 655
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    :cond_8
    return-void
.end method


# virtual methods
.method public final synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 600
    invoke-static {p1, p2}, Lcom/dropbox/core/v2/sharing/be$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/be;

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

    .line 600
    check-cast p1, Lcom/dropbox/core/v2/sharing/be;

    invoke-static {p1, p2, p3}, Lcom/dropbox/core/v2/sharing/be$a;->a(Lcom/dropbox/core/v2/sharing/be;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
