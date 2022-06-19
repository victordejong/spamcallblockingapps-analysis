.class public final Lcom/explorestack/protobuf/openrtb/Request;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/openrtb/RequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/openrtb/Request$Builder;,
        Lcom/explorestack/protobuf/openrtb/Request$Item;,
        Lcom/explorestack/protobuf/openrtb/Request$ItemOrBuilder;,
        Lcom/explorestack/protobuf/openrtb/Request$Source;,
        Lcom/explorestack/protobuf/openrtb/Request$SourceOrBuilder;
    }
.end annotation


# static fields
.field public static final AT_FIELD_NUMBER:I = 0x4

.field public static final CDATA_FIELD_NUMBER:I = 0x8

.field public static final CONTEXT_FIELD_NUMBER:I = 0xc

.field public static final CUR_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Request;

.field public static final EXT_FIELD_NUMBER:I = 0xe

.field public static final EXT_PROTO_FIELD_NUMBER:I = 0xd

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final ITEM_FIELD_NUMBER:I = 0xa

.field public static final PACKAGE_FIELD_NUMBER:I = 0xb

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/openrtb/Request;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEAT_FIELD_NUMBER:I = 0x6

.field public static final SOURCE_FIELD_NUMBER:I = 0x9

.field public static final TEST_FIELD_NUMBER:I = 0x2

.field public static final TMAX_FIELD_NUMBER:I = 0x3

.field public static final WSEAT_FIELD_NUMBER:I = 0x7

.field private static final serialVersionUID:J


# instance fields
.field private at_:I

.field private volatile cdata_:Ljava/lang/Object;

.field private context_:Lcom/explorestack/protobuf/Any;

.field private cur_:Lcom/explorestack/protobuf/LazyStringList;

.field private extProto_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Any;",
            ">;"
        }
    .end annotation
.end field

.field private ext_:Lcom/explorestack/protobuf/Struct;

.field private volatile id_:Ljava/lang/Object;

.field private item_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/openrtb/Request$Item;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private package_:I

.field private seat_:Lcom/explorestack/protobuf/LazyStringList;

.field private source_:Lcom/explorestack/protobuf/openrtb/Request$Source;

.field private test_:Z

.field private tmax_:I

.field private wseat_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12912
    new-instance v0, Lcom/explorestack/protobuf/openrtb/Request;

    invoke-direct {v0}, Lcom/explorestack/protobuf/openrtb/Request;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/openrtb/Request;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Request;

    .line 12920
    new-instance v0, Lcom/explorestack/protobuf/openrtb/Request$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/openrtb/Request$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/openrtb/Request;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 10354
    iput-byte v0, p0, Lcom/explorestack/protobuf/openrtb/Request;->memoizedIsInitialized:B

    const-string v0, ""

    .line 26
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request;->id_:Ljava/lang/Object;

    .line 27
    sget-object v1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request;->cur_:Lcom/explorestack/protobuf/LazyStringList;

    .line 28
    sget-object v1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request;->seat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 29
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request;->cdata_:Ljava/lang/Object;

    .line 30
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request;->item_:Ljava/util/List;

    .line 31
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request;->extProto_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request;-><init>()V

    .line 52
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_c

    .line 60
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v4

    const/4 v5, 0x0

    sparse-switch v4, :sswitch_data_0

    .line 178
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/explorestack/protobuf/openrtb/Request;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    goto/16 :goto_2

    .line 166
    :sswitch_0
    iget-object v4, p0, Lcom/explorestack/protobuf/openrtb/Request;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v4, :cond_1

    .line 167
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Struct;->toBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v5

    .line 169
    :cond_1
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/Struct;

    iput-object v4, p0, Lcom/explorestack/protobuf/openrtb/Request;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v5, :cond_0

    .line 171
    invoke-virtual {v5, v4}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 172
    invoke-virtual {v5}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object v4

    iput-object v4, p0, Lcom/explorestack/protobuf/openrtb/Request;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    :sswitch_1
    and-int/lit8 v4, v3, 0x8

    if-nez v4, :cond_2

    .line 157
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/openrtb/Request;->extProto_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x8

    .line 160
    :cond_2
    iget-object v4, p0, Lcom/explorestack/protobuf/openrtb/Request;->extProto_:Ljava/util/List;

    .line 161
    invoke-static {}, Lcom/explorestack/protobuf/Any;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    .line 160
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 144
    :sswitch_2
    iget-object v4, p0, Lcom/explorestack/protobuf/openrtb/Request;->context_:Lcom/explorestack/protobuf/Any;

    if-eqz v4, :cond_3

    .line 145
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Any;->toBuilder()Lcom/explorestack/protobuf/Any$Builder;

    move-result-object v5

    .line 147
    :cond_3
    invoke-static {}, Lcom/explorestack/protobuf/Any;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/Any;

    iput-object v4, p0, Lcom/explorestack/protobuf/openrtb/Request;->context_:Lcom/explorestack/protobuf/Any;

    if-eqz v5, :cond_0

    .line 149
    invoke-virtual {v5, v4}, Lcom/explorestack/protobuf/Any$Builder;->mergeFrom(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/Any$Builder;

    .line 150
    invoke-virtual {v5}, Lcom/explorestack/protobuf/Any$Builder;->buildPartial()Lcom/explorestack/protobuf/Any;

    move-result-object v4

    iput-object v4, p0, Lcom/explorestack/protobuf/openrtb/Request;->context_:Lcom/explorestack/protobuf/Any;

    goto :goto_0

    .line 139
    :sswitch_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lcom/explorestack/protobuf/openrtb/Request;->package_:I

    goto :goto_0

    :sswitch_4
    and-int/lit8 v4, v3, 0x4

    if-nez v4, :cond_4

    .line 130
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/openrtb/Request;->item_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x4

    .line 133
    :cond_4
    iget-object v4, p0, Lcom/explorestack/protobuf/openrtb/Request;->item_:Ljava/util/List;

    .line 134
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    .line 133
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 117
    :sswitch_5
    iget-object v4, p0, Lcom/explorestack/protobuf/openrtb/Request;->source_:Lcom/explorestack/protobuf/openrtb/Request$Source;

    if-eqz v4, :cond_5

    .line 118
    invoke-virtual {v4}, Lcom/explorestack/protobuf/openrtb/Request$Source;->toBuilder()Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object v5

    .line 120
    :cond_5
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Source;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/openrtb/Request$Source;

    iput-object v4, p0, Lcom/explorestack/protobuf/openrtb/Request;->source_:Lcom/explorestack/protobuf/openrtb/Request$Source;

    if-eqz v5, :cond_0

    .line 122
    invoke-virtual {v5, v4}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Request$Source;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    .line 123
    invoke-virtual {v5}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Request$Source;

    move-result-object v4

    iput-object v4, p0, Lcom/explorestack/protobuf/openrtb/Request;->source_:Lcom/explorestack/protobuf/openrtb/Request$Source;

    goto/16 :goto_0

    .line 110
    :sswitch_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 112
    iput-object v4, p0, Lcom/explorestack/protobuf/openrtb/Request;->cdata_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 106
    :sswitch_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/explorestack/protobuf/openrtb/Request;->wseat_:Z

    goto/16 :goto_0

    .line 96
    :sswitch_8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    and-int/lit8 v5, v3, 0x2

    if-nez v5, :cond_6

    .line 98
    new-instance v5, Lcom/explorestack/protobuf/LazyStringArrayList;

    invoke-direct {v5}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>()V

    iput-object v5, p0, Lcom/explorestack/protobuf/openrtb/Request;->seat_:Lcom/explorestack/protobuf/LazyStringList;

    or-int/lit8 v3, v3, 0x2

    .line 101
    :cond_6
    iget-object v5, p0, Lcom/explorestack/protobuf/openrtb/Request;->seat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v5, v4}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 87
    :sswitch_9
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    and-int/lit8 v5, v3, 0x1

    if-nez v5, :cond_7

    .line 89
    new-instance v5, Lcom/explorestack/protobuf/LazyStringArrayList;

    invoke-direct {v5}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>()V

    iput-object v5, p0, Lcom/explorestack/protobuf/openrtb/Request;->cur_:Lcom/explorestack/protobuf/LazyStringList;

    or-int/lit8 v3, v3, 0x1

    .line 92
    :cond_7
    iget-object v5, p0, Lcom/explorestack/protobuf/openrtb/Request;->cur_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v5, v4}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 83
    :sswitch_a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lcom/explorestack/protobuf/openrtb/Request;->at_:I

    goto/16 :goto_0

    .line 78
    :sswitch_b
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lcom/explorestack/protobuf/openrtb/Request;->tmax_:I

    goto/16 :goto_0

    .line 73
    :sswitch_c
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/explorestack/protobuf/openrtb/Request;->test_:Z

    goto/16 :goto_0

    .line 66
    :sswitch_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 68
    iput-object v4, p0, Lcom/explorestack/protobuf/openrtb/Request;->id_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_e
    const/4 v1, 0x1

    goto/16 :goto_0

    :goto_2
    if-nez v4, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 189
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 190
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 187
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 p2, v3, 0x1

    if-eqz p2, :cond_8

    .line 193
    iget-object p2, p0, Lcom/explorestack/protobuf/openrtb/Request;->cur_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/openrtb/Request;->cur_:Lcom/explorestack/protobuf/LazyStringList;

    :cond_8
    and-int/lit8 p2, v3, 0x2

    if-eqz p2, :cond_9

    .line 196
    iget-object p2, p0, Lcom/explorestack/protobuf/openrtb/Request;->seat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/openrtb/Request;->seat_:Lcom/explorestack/protobuf/LazyStringList;

    :cond_9
    and-int/lit8 p2, v3, 0x4

    if-eqz p2, :cond_a

    .line 199
    iget-object p2, p0, Lcom/explorestack/protobuf/openrtb/Request;->item_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/openrtb/Request;->item_:Ljava/util/List;

    :cond_a
    and-int/lit8 p2, v3, 0x8

    if-eqz p2, :cond_b

    .line 202
    iget-object p2, p0, Lcom/explorestack/protobuf/openrtb/Request;->extProto_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/openrtb/Request;->extProto_:Ljava/util/List;

    .line 204
    :cond_b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/openrtb/Request;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 205
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request;->makeExtensionsImmutable()V

    .line 206
    throw p1

    :cond_c
    and-int/lit8 p1, v3, 0x1

    if-eqz p1, :cond_d

    .line 193
    iget-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request;->cur_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request;->cur_:Lcom/explorestack/protobuf/LazyStringList;

    :cond_d
    and-int/lit8 p1, v3, 0x2

    if-eqz p1, :cond_e

    .line 196
    iget-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request;->seat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request;->seat_:Lcom/explorestack/protobuf/LazyStringList;

    :cond_e
    and-int/lit8 p1, v3, 0x4

    if-eqz p1, :cond_f

    .line 199
    iget-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request;->item_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request;->item_:Ljava/util/List;

    :cond_f
    and-int/lit8 p1, v3, 0x8

    if-eqz p1, :cond_10

    .line 202
    iget-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request;->extProto_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request;->extProto_:Ljava/util/List;

    .line 204
    :cond_10
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 205
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_e
        0xa -> :sswitch_d
        0x10 -> :sswitch_c
        0x18 -> :sswitch_b
        0x20 -> :sswitch_a
        0x2a -> :sswitch_9
        0x32 -> :sswitch_8
        0x38 -> :sswitch_7
        0x42 -> :sswitch_6
        0x4a -> :sswitch_5
        0x52 -> :sswitch_4
        0x58 -> :sswitch_3
        0x62 -> :sswitch_2
        0x6a -> :sswitch_1
        0x72 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/openrtb/Request$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 10354
    iput-byte p1, p0, Lcom/explorestack/protobuf/openrtb/Request;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/openrtb/Request$1;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$10000(Lcom/explorestack/protobuf/openrtb/Request;)Ljava/util/List;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Request;->extProto_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$10002(Lcom/explorestack/protobuf/openrtb/Request;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request;->extProto_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$10100()Z
    .locals 1

    .line 16
    sget-boolean v0, Lcom/explorestack/protobuf/openrtb/Request;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$10200()Z
    .locals 1

    .line 16
    sget-boolean v0, Lcom/explorestack/protobuf/openrtb/Request;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$10300(Lcom/explorestack/protobuf/openrtb/Request;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Request;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$10400()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 16
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$10500(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 16
    invoke-static {p0}, Lcom/explorestack/protobuf/openrtb/Request;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$10600(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 16
    invoke-static {p0}, Lcom/explorestack/protobuf/openrtb/Request;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$10700(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 16
    invoke-static {p0}, Lcom/explorestack/protobuf/openrtb/Request;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$10800(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 16
    invoke-static {p0}, Lcom/explorestack/protobuf/openrtb/Request;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$8500()Z
    .locals 1

    .line 16
    sget-boolean v0, Lcom/explorestack/protobuf/openrtb/Request;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$8700(Lcom/explorestack/protobuf/openrtb/Request;)Ljava/lang/Object;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Request;->id_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$8702(Lcom/explorestack/protobuf/openrtb/Request;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$8802(Lcom/explorestack/protobuf/openrtb/Request;Z)Z
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/explorestack/protobuf/openrtb/Request;->test_:Z

    return p1
.end method

.method static synthetic access$8902(Lcom/explorestack/protobuf/openrtb/Request;I)I
    .locals 0

    .line 16
    iput p1, p0, Lcom/explorestack/protobuf/openrtb/Request;->tmax_:I

    return p1
.end method

.method static synthetic access$9002(Lcom/explorestack/protobuf/openrtb/Request;I)I
    .locals 0

    .line 16
    iput p1, p0, Lcom/explorestack/protobuf/openrtb/Request;->at_:I

    return p1
.end method

.method static synthetic access$9100(Lcom/explorestack/protobuf/openrtb/Request;)Lcom/explorestack/protobuf/LazyStringList;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Request;->cur_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p0
.end method

.method static synthetic access$9102(Lcom/explorestack/protobuf/openrtb/Request;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request;->cur_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$9200(Lcom/explorestack/protobuf/openrtb/Request;)Lcom/explorestack/protobuf/LazyStringList;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Request;->seat_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p0
.end method

.method static synthetic access$9202(Lcom/explorestack/protobuf/openrtb/Request;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request;->seat_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$9302(Lcom/explorestack/protobuf/openrtb/Request;Z)Z
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/explorestack/protobuf/openrtb/Request;->wseat_:Z

    return p1
.end method

.method static synthetic access$9400(Lcom/explorestack/protobuf/openrtb/Request;)Ljava/lang/Object;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Request;->cdata_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$9402(Lcom/explorestack/protobuf/openrtb/Request;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request;->cdata_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$9502(Lcom/explorestack/protobuf/openrtb/Request;Lcom/explorestack/protobuf/openrtb/Request$Source;)Lcom/explorestack/protobuf/openrtb/Request$Source;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request;->source_:Lcom/explorestack/protobuf/openrtb/Request$Source;

    return-object p1
.end method

.method static synthetic access$9600(Lcom/explorestack/protobuf/openrtb/Request;)Ljava/util/List;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Request;->item_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$9602(Lcom/explorestack/protobuf/openrtb/Request;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request;->item_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$9702(Lcom/explorestack/protobuf/openrtb/Request;I)I
    .locals 0

    .line 16
    iput p1, p0, Lcom/explorestack/protobuf/openrtb/Request;->package_:I

    return p1
.end method

.method static synthetic access$9802(Lcom/explorestack/protobuf/openrtb/Request;Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/Any;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request;->context_:Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method static synthetic access$9902(Lcom/explorestack/protobuf/openrtb/Request;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request;->ext_:Lcom/explorestack/protobuf/Struct;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request;
    .locals 1

    .line 12916
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Request;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 210
    sget-object v0, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->internal_static_bidmachine_protobuf_openrtb_Request_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 10666
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Request;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Request;->toBuilder()Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/explorestack/protobuf/openrtb/Request;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 10669
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Request;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Request;->toBuilder()Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Request;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/openrtb/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10639
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 10640
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10646
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 10647
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/openrtb/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10607
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10613
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/openrtb/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10652
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 10653
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10659
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 10660
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/openrtb/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10627
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 10628
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10634
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 10635
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/openrtb/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10596
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10602
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/explorestack/protobuf/openrtb/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10617
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10623
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/openrtb/Request;",
            ">;"
        }
    .end annotation

    .line 12931
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 10491
    :cond_0
    instance-of v1, p1, Lcom/explorestack/protobuf/openrtb/Request;

    if-nez v1, :cond_1

    .line 10492
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 10494
    :cond_1
    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request;

    .line 10496
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request;->getId()Ljava/lang/String;

    move-result-object v1

    .line 10497
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 10498
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request;->getTest()Z

    move-result v1

    .line 10499
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request;->getTest()Z

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    .line 10500
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request;->getTmax()I

    move-result v1

    .line 10501
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request;->getTmax()I

    move-result v3

    if-eq v1, v3, :cond_4

    return v2

    .line 10502
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request;->getAt()I

    move-result v1

    .line 10503
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request;->getAt()I

    move-result v3

    if-eq v1, v3, :cond_5

    return v2

    .line 10504
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request;->getCurList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    .line 10505
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request;->getCurList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 10506
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request;->getSeatList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    .line 10507
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request;->getSeatList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 10508
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request;->getWseat()Z

    move-result v1

    .line 10509
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request;->getWseat()Z

    move-result v3

    if-eq v1, v3, :cond_8

    return v2

    .line 10510
    :cond_8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request;->getCdata()Ljava/lang/String;

    move-result-object v1

    .line 10511
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request;->getCdata()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 10512
    :cond_9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request;->hasSource()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request;->hasSource()Z

    move-result v3

    if-eq v1, v3, :cond_a

    return v2

    .line 10513
    :cond_a
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request;->hasSource()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 10514
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request;->getSource()Lcom/explorestack/protobuf/openrtb/Request$Source;

    move-result-object v1

    .line 10515
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request;->getSource()Lcom/explorestack/protobuf/openrtb/Request$Source;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/openrtb/Request$Source;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    .line 10517
    :cond_b
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request;->getItemList()Ljava/util/List;

    move-result-object v1

    .line 10518
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request;->getItemList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    .line 10519
    :cond_c
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request;->getPackage()I

    move-result v1

    .line 10520
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request;->getPackage()I

    move-result v3

    if-eq v1, v3, :cond_d

    return v2

    .line 10521
    :cond_d
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request;->hasContext()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request;->hasContext()Z

    move-result v3

    if-eq v1, v3, :cond_e

    return v2

    .line 10522
    :cond_e
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request;->hasContext()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 10523
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request;->getContext()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 10524
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request;->getContext()Lcom/explorestack/protobuf/Any;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/Any;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    .line 10526
    :cond_f
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request;->hasExt()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request;->hasExt()Z

    move-result v3

    if-eq v1, v3, :cond_10

    return v2

    .line 10527
    :cond_10
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request;->hasExt()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 10528
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 10529
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/Struct;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    .line 10531
    :cond_11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request;->getExtProtoList()Ljava/util/List;

    move-result-object v1

    .line 10532
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request;->getExtProtoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    .line 10533
    :cond_12
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/openrtb/Request;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    return v2

    :cond_13
    return v0
.end method

.method public final getAt()I
    .locals 1

    .line 9940
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request;->at_:I

    return v0
.end method

.method public final getCdata()Ljava/lang/String;
    .locals 2

    .line 10067
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request;->cdata_:Ljava/lang/Object;

    .line 10068
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 10069
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 10071
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 10073
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 10074
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request;->cdata_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getCdataBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 10088
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request;->cdata_:Ljava/lang/Object;

    .line 10089
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 10090
    check-cast v0, Ljava/lang/String;

    .line 10091
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 10093
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request;->cdata_:Ljava/lang/Object;

    return-object v0

    .line 10096
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getContext()Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 10247
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request;->context_:Lcom/explorestack/protobuf/Any;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getContextOrBuilder()Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 10263
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request;->getContext()Lcom/explorestack/protobuf/Any;

    move-result-object v0

    return-object v0
.end method

.method public final getCur(I)Ljava/lang/String;
    .locals 1

    .line 9980
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request;->cur_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getCurBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 9993
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request;->cur_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final getCurCount()I
    .locals 1

    .line 9968
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request;->cur_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public final getCurList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 9956
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request;->cur_:Lcom/explorestack/protobuf/LazyStringList;

    return-object v0
.end method

.method public final bridge synthetic getCurList()Ljava/util/List;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request;->getCurList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request;->getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Request;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request;->getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Request;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Request;
    .locals 1

    .line 12941
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Request;

    return-object v0
.end method

.method public final getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 10286
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 10296
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    return-object v0
.end method

.method public final getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 10340
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public final getExtProtoCount()I
    .locals 1

    .line 10330
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getExtProtoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Any;",
            ">;"
        }
    .end annotation

    .line 10309
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request;->extProto_:Ljava/util/List;

    return-object v0
.end method

.method public final getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 10351
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/AnyOrBuilder;

    return-object p1
.end method

.method public final getExtProtoOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/AnyOrBuilder;",
            ">;"
        }
    .end annotation

    .line 10320
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request;->extProto_:Ljava/util/List;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 2

    .line 9867
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request;->id_:Ljava/lang/Object;

    .line 9868
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 9869
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 9871
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 9873
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 9874
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request;->id_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 9887
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request;->id_:Ljava/lang/Object;

    .line 9888
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 9889
    check-cast v0, Ljava/lang/String;

    .line 9890
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 9892
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request;->id_:Ljava/lang/Object;

    return-object v0

    .line 9895
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getItem(I)Lcom/explorestack/protobuf/openrtb/Request$Item;
    .locals 1

    .line 10185
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request;->item_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item;

    return-object p1
.end method

.method public final getItemCount()I
    .locals 1

    .line 10173
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request;->item_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/openrtb/Request$Item;",
            ">;"
        }
    .end annotation

    .line 10148
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request;->item_:Ljava/util/List;

    return-object v0
.end method

.method public final getItemOrBuilder(I)Lcom/explorestack/protobuf/openrtb/Request$ItemOrBuilder;
    .locals 1

    .line 10198
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request;->item_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$ItemOrBuilder;

    return-object p1
.end method

.method public final getItemOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/openrtb/Request$ItemOrBuilder;",
            ">;"
        }
    .end annotation

    .line 10161
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request;->item_:Ljava/util/List;

    return-object v0
.end method

.method public final getPackage()I
    .locals 1

    .line 10212
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request;->package_:I

    return v0
.end method

.method public final getParserForType()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/openrtb/Request;",
            ">;"
        }
    .end annotation

    .line 12936
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public final getSeat(I)Ljava/lang/String;
    .locals 1

    .line 10027
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request;->seat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getSeatBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 10038
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request;->seat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final getSeatCount()I
    .locals 1

    .line 10017
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request;->seat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public final getSeatList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 10007
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request;->seat_:Lcom/explorestack/protobuf/LazyStringList;

    return-object v0
.end method

.method public final bridge synthetic getSeatList()Ljava/util/List;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request;->getSeatList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 6

    .line 10415
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 10419
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request;->getIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 10420
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request;->id_:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 10422
    :goto_0
    iget-boolean v3, p0, Lcom/explorestack/protobuf/openrtb/Request;->test_:Z

    if-eqz v3, :cond_2

    const/4 v4, 0x2

    .line 10424
    invoke-static {v4, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v0, v3

    .line 10426
    :cond_2
    iget v3, p0, Lcom/explorestack/protobuf/openrtb/Request;->tmax_:I

    if-eqz v3, :cond_3

    const/4 v4, 0x3

    .line 10428
    invoke-static {v4, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v3

    add-int/2addr v0, v3

    .line 10430
    :cond_3
    iget v3, p0, Lcom/explorestack/protobuf/openrtb/Request;->at_:I

    if-eqz v3, :cond_4

    const/4 v4, 0x4

    .line 10432
    invoke-static {v4, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v3

    add-int/2addr v0, v3

    :cond_4
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 10436
    :goto_1
    iget-object v5, p0, Lcom/explorestack/protobuf/openrtb/Request;->cur_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v5}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v5

    if-ge v3, v5, :cond_5

    .line 10437
    iget-object v5, p0, Lcom/explorestack/protobuf/openrtb/Request;->cur_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v5, v3}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/explorestack/protobuf/openrtb/Request;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    add-int/2addr v0, v4

    .line 10440
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request;->getCurList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v3

    invoke-interface {v3}, Lcom/explorestack/protobuf/ProtocolStringList;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 10444
    :goto_2
    iget-object v5, p0, Lcom/explorestack/protobuf/openrtb/Request;->seat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v5}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v5

    if-ge v3, v5, :cond_6

    .line 10445
    iget-object v5, p0, Lcom/explorestack/protobuf/openrtb/Request;->seat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v5, v3}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/explorestack/protobuf/openrtb/Request;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    add-int/2addr v0, v4

    .line 10448
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request;->getSeatList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v3

    invoke-interface {v3}, Lcom/explorestack/protobuf/ProtocolStringList;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    .line 10450
    iget-boolean v1, p0, Lcom/explorestack/protobuf/openrtb/Request;->wseat_:Z

    if-eqz v1, :cond_7

    const/4 v3, 0x7

    .line 10452
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 10454
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request;->getCdataBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    const/16 v1, 0x8

    .line 10455
    iget-object v3, p0, Lcom/explorestack/protobuf/openrtb/Request;->cdata_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10457
    :cond_8
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request;->source_:Lcom/explorestack/protobuf/openrtb/Request$Source;

    if-eqz v1, :cond_9

    const/16 v1, 0x9

    .line 10459
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request;->getSource()Lcom/explorestack/protobuf/openrtb/Request$Source;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    const/4 v1, 0x0

    .line 10461
    :goto_3
    iget-object v3, p0, Lcom/explorestack/protobuf/openrtb/Request;->item_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_a

    const/16 v3, 0xa

    .line 10462
    iget-object v4, p0, Lcom/explorestack/protobuf/openrtb/Request;->item_:Ljava/util/List;

    .line 10463
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/MessageLite;

    invoke-static {v3, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 10465
    :cond_a
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Request;->package_:I

    if-eqz v1, :cond_b

    const/16 v3, 0xb

    .line 10467
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10469
    :cond_b
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request;->context_:Lcom/explorestack/protobuf/Any;

    if-eqz v1, :cond_c

    const/16 v1, 0xc

    .line 10471
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request;->getContext()Lcom/explorestack/protobuf/Any;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10473
    :cond_c
    :goto_4
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request;->extProto_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_d

    const/16 v1, 0xd

    .line 10474
    iget-object v3, p0, Lcom/explorestack/protobuf/openrtb/Request;->extProto_:Ljava/util/List;

    .line 10475
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 10477
    :cond_d
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v1, :cond_e

    const/16 v1, 0xe

    .line 10479
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10481
    :cond_e
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 10482
    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request;->memoizedSize:I

    return v0
.end method

.method public final getSource()Lcom/explorestack/protobuf/openrtb/Request$Source;
    .locals 1

    .line 10122
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request;->source_:Lcom/explorestack/protobuf/openrtb/Request$Source;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request$Source;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getSourceOrBuilder()Lcom/explorestack/protobuf/openrtb/Request$SourceOrBuilder;
    .locals 1

    .line 10133
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request;->getSource()Lcom/explorestack/protobuf/openrtb/Request$Source;

    move-result-object v0

    return-object v0
.end method

.method public final getTest()Z
    .locals 1

    .line 9911
    iget-boolean v0, p0, Lcom/explorestack/protobuf/openrtb/Request;->test_:Z

    return v0
.end method

.method public final getTmax()I
    .locals 1

    .line 9925
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request;->tmax_:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final getWseat()Z
    .locals 1

    .line 10053
    iget-boolean v0, p0, Lcom/explorestack/protobuf/openrtb/Request;->wseat_:Z

    return v0
.end method

.method public final hasContext()Z
    .locals 1

    .line 10231
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request;->context_:Lcom/explorestack/protobuf/Any;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasExt()Z
    .locals 1

    .line 10276
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasSource()Z
    .locals 1

    .line 10111
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request;->source_:Lcom/explorestack/protobuf/openrtb/Request$Source;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 10539
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 10540
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request;->memoizedHashCode:I

    return v0

    .line 10543
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 10545
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 10548
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request;->getTest()Z

    move-result v1

    .line 10547
    invoke-static {v1}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 10550
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request;->getTmax()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 10552
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request;->getAt()I

    move-result v1

    add-int/2addr v0, v1

    .line 10553
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request;->getCurCount()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 10555
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request;->getCurList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 10557
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request;->getSeatCount()I

    move-result v1

    if-lez v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 10559
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request;->getSeatList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 10563
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request;->getWseat()Z

    move-result v1

    .line 10562
    invoke-static {v1}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 10565
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request;->getCdata()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 10566
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request;->hasSource()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 10568
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request;->getSource()Lcom/explorestack/protobuf/openrtb/Request$Source;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 10570
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request;->getItemCount()I

    move-result v1

    if-lez v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 10572
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request;->getItemList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    mul-int/lit8 v0, v0, 0x35

    .line 10575
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request;->getPackage()I

    move-result v1

    add-int/2addr v0, v1

    .line 10576
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request;->hasContext()Z

    move-result v1

    if-eqz v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xc

    mul-int/lit8 v0, v0, 0x35

    .line 10578
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request;->getContext()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/Any;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 10580
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request;->hasExt()Z

    move-result v1

    if-eqz v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xe

    mul-int/lit8 v0, v0, 0x35

    .line 10582
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/Struct;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 10584
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request;->getExtProtoCount()I

    move-result v1

    if-lez v1, :cond_7

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xd

    mul-int/lit8 v0, v0, 0x35

    .line 10586
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request;->getExtProtoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    mul-int/lit8 v0, v0, 0x1d

    .line 10588
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 10589
    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request;->memoizedHashCode:I

    return v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 216
    sget-object v0, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->internal_static_bidmachine_protobuf_openrtb_Request_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/openrtb/Request;

    const-class v2, Lcom/explorestack/protobuf/openrtb/Request$Builder;

    .line 217
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 10357
    iget-byte v0, p0, Lcom/explorestack/protobuf/openrtb/Request;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 10361
    :cond_1
    iput-byte v1, p0, Lcom/explorestack/protobuf/openrtb/Request;->memoizedIsInitialized:B

    return v1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request;->newBuilderForType()Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request;->newBuilderForType()Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 1

    .line 10664
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request;->newBuilder()Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 2

    .line 10680
    new-instance v0, Lcom/explorestack/protobuf/openrtb/Request$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/openrtb/Request$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/openrtb/Request$1;)V

    return-object v0
.end method

.method public final newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 38
    new-instance p1, Lcom/explorestack/protobuf/openrtb/Request;

    invoke-direct {p1}, Lcom/explorestack/protobuf/openrtb/Request;-><init>()V

    return-object p1
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request;->toBuilder()Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request;->toBuilder()Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lcom/explorestack/protobuf/openrtb/Request$Builder;
    .locals 2

    .line 10673
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Request;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/explorestack/protobuf/openrtb/Request$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Builder;-><init>(Lcom/explorestack/protobuf/openrtb/Request$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/openrtb/Request$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Builder;-><init>(Lcom/explorestack/protobuf/openrtb/Request$1;)V

    .line 10674
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Request;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10368
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request;->getIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10369
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request;->id_:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 10371
    :cond_0
    iget-boolean v0, p0, Lcom/explorestack/protobuf/openrtb/Request;->test_:Z

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 10372
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 10374
    :cond_1
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request;->tmax_:I

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 10375
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 10377
    :cond_2
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request;->at_:I

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 10378
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 10380
    :goto_0
    iget-object v2, p0, Lcom/explorestack/protobuf/openrtb/Request;->cur_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    const/4 v2, 0x5

    .line 10381
    iget-object v3, p0, Lcom/explorestack/protobuf/openrtb/Request;->cur_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v3, v1}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    .line 10383
    :goto_1
    iget-object v2, p0, Lcom/explorestack/protobuf/openrtb/Request;->seat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    const/4 v2, 0x6

    .line 10384
    iget-object v3, p0, Lcom/explorestack/protobuf/openrtb/Request;->seat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v3, v1}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 10386
    :cond_5
    iget-boolean v1, p0, Lcom/explorestack/protobuf/openrtb/Request;->wseat_:Z

    if-eqz v1, :cond_6

    const/4 v2, 0x7

    .line 10387
    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 10389
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request;->getCdataBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    const/16 v1, 0x8

    .line 10390
    iget-object v2, p0, Lcom/explorestack/protobuf/openrtb/Request;->cdata_:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 10392
    :cond_7
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request;->source_:Lcom/explorestack/protobuf/openrtb/Request$Source;

    if-eqz v1, :cond_8

    const/16 v1, 0x9

    .line 10393
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request;->getSource()Lcom/explorestack/protobuf/openrtb/Request$Source;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    :cond_8
    const/4 v1, 0x0

    .line 10395
    :goto_2
    iget-object v2, p0, Lcom/explorestack/protobuf/openrtb/Request;->item_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    const/16 v2, 0xa

    .line 10396
    iget-object v3, p0, Lcom/explorestack/protobuf/openrtb/Request;->item_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {p1, v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 10398
    :cond_9
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Request;->package_:I

    if-eqz v1, :cond_a

    const/16 v2, 0xb

    .line 10399
    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 10401
    :cond_a
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request;->context_:Lcom/explorestack/protobuf/Any;

    if-eqz v1, :cond_b

    const/16 v1, 0xc

    .line 10402
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request;->getContext()Lcom/explorestack/protobuf/Any;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 10404
    :cond_b
    :goto_3
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request;->extProto_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/16 v1, 0xd

    .line 10405
    iget-object v2, p0, Lcom/explorestack/protobuf/openrtb/Request;->extProto_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 10407
    :cond_c
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_d

    const/16 v0, 0xe

    .line 10408
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 10410
    :cond_d
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
