.class public final enum Lcom/explorestack/protobuf/adcom/PlaybackMethod;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/explorestack/protobuf/adcom/PlaybackMethod;",
        ">;",
        "Lcom/explorestack/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/explorestack/protobuf/adcom/PlaybackMethod;

.field public static final enum PLAYBACK_METHOD_INVALID:Lcom/explorestack/protobuf/adcom/PlaybackMethod;

.field public static final PLAYBACK_METHOD_INVALID_VALUE:I = 0x0

.field public static final enum PLAYBACK_METHOD_ON_CLICK_SOUND_ON:Lcom/explorestack/protobuf/adcom/PlaybackMethod;

.field public static final PLAYBACK_METHOD_ON_CLICK_SOUND_ON_VALUE:I = 0x3

.field public static final enum PLAYBACK_METHOD_ON_ENTERING_VIEWPORT_SOUND_OFF:Lcom/explorestack/protobuf/adcom/PlaybackMethod;

.field public static final PLAYBACK_METHOD_ON_ENTERING_VIEWPORT_SOUND_OFF_VALUE:I = 0x6

.field public static final enum PLAYBACK_METHOD_ON_ENTERING_VIEWPORT_SOUND_ON:Lcom/explorestack/protobuf/adcom/PlaybackMethod;

.field public static final PLAYBACK_METHOD_ON_ENTERING_VIEWPORT_SOUND_ON_VALUE:I = 0x5

.field public static final enum PLAYBACK_METHOD_ON_MOUSE_OVER_SOUND_ON:Lcom/explorestack/protobuf/adcom/PlaybackMethod;

.field public static final PLAYBACK_METHOD_ON_MOUSE_OVER_SOUND_ON_VALUE:I = 0x4

.field public static final enum PLAYBACK_METHOD_ON_PAGE_LOAD_SOUND_OFF:Lcom/explorestack/protobuf/adcom/PlaybackMethod;

.field public static final PLAYBACK_METHOD_ON_PAGE_LOAD_SOUND_OFF_VALUE:I = 0x2

.field public static final enum PLAYBACK_METHOD_ON_PAGE_LOAD_SOUND_ON:Lcom/explorestack/protobuf/adcom/PlaybackMethod;

.field public static final PLAYBACK_METHOD_ON_PAGE_LOAD_SOUND_ON_VALUE:I = 0x1

.field public static final enum UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/PlaybackMethod;

.field private static final VALUES:[Lcom/explorestack/protobuf/adcom/PlaybackMethod;

.field private static final internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
            "Lcom/explorestack/protobuf/adcom/PlaybackMethod;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 14
    new-instance v0, Lcom/explorestack/protobuf/adcom/PlaybackMethod;

    const-string v1, "PLAYBACK_METHOD_INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/explorestack/protobuf/adcom/PlaybackMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/explorestack/protobuf/adcom/PlaybackMethod;->PLAYBACK_METHOD_INVALID:Lcom/explorestack/protobuf/adcom/PlaybackMethod;

    .line 18
    new-instance v1, Lcom/explorestack/protobuf/adcom/PlaybackMethod;

    const-string v3, "PLAYBACK_METHOD_ON_PAGE_LOAD_SOUND_ON"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/explorestack/protobuf/adcom/PlaybackMethod;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/explorestack/protobuf/adcom/PlaybackMethod;->PLAYBACK_METHOD_ON_PAGE_LOAD_SOUND_ON:Lcom/explorestack/protobuf/adcom/PlaybackMethod;

    .line 22
    new-instance v3, Lcom/explorestack/protobuf/adcom/PlaybackMethod;

    const-string v5, "PLAYBACK_METHOD_ON_PAGE_LOAD_SOUND_OFF"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/explorestack/protobuf/adcom/PlaybackMethod;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/explorestack/protobuf/adcom/PlaybackMethod;->PLAYBACK_METHOD_ON_PAGE_LOAD_SOUND_OFF:Lcom/explorestack/protobuf/adcom/PlaybackMethod;

    .line 26
    new-instance v5, Lcom/explorestack/protobuf/adcom/PlaybackMethod;

    const-string v7, "PLAYBACK_METHOD_ON_CLICK_SOUND_ON"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/explorestack/protobuf/adcom/PlaybackMethod;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/explorestack/protobuf/adcom/PlaybackMethod;->PLAYBACK_METHOD_ON_CLICK_SOUND_ON:Lcom/explorestack/protobuf/adcom/PlaybackMethod;

    .line 30
    new-instance v7, Lcom/explorestack/protobuf/adcom/PlaybackMethod;

    const-string v9, "PLAYBACK_METHOD_ON_MOUSE_OVER_SOUND_ON"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/explorestack/protobuf/adcom/PlaybackMethod;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/explorestack/protobuf/adcom/PlaybackMethod;->PLAYBACK_METHOD_ON_MOUSE_OVER_SOUND_ON:Lcom/explorestack/protobuf/adcom/PlaybackMethod;

    .line 34
    new-instance v9, Lcom/explorestack/protobuf/adcom/PlaybackMethod;

    const-string v11, "PLAYBACK_METHOD_ON_ENTERING_VIEWPORT_SOUND_ON"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/explorestack/protobuf/adcom/PlaybackMethod;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/explorestack/protobuf/adcom/PlaybackMethod;->PLAYBACK_METHOD_ON_ENTERING_VIEWPORT_SOUND_ON:Lcom/explorestack/protobuf/adcom/PlaybackMethod;

    .line 38
    new-instance v11, Lcom/explorestack/protobuf/adcom/PlaybackMethod;

    const-string v13, "PLAYBACK_METHOD_ON_ENTERING_VIEWPORT_SOUND_OFF"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/explorestack/protobuf/adcom/PlaybackMethod;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/explorestack/protobuf/adcom/PlaybackMethod;->PLAYBACK_METHOD_ON_ENTERING_VIEWPORT_SOUND_OFF:Lcom/explorestack/protobuf/adcom/PlaybackMethod;

    .line 39
    new-instance v13, Lcom/explorestack/protobuf/adcom/PlaybackMethod;

    const-string v15, "UNRECOGNIZED"

    const/4 v14, 0x7

    const/4 v12, -0x1

    invoke-direct {v13, v15, v14, v12}, Lcom/explorestack/protobuf/adcom/PlaybackMethod;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/explorestack/protobuf/adcom/PlaybackMethod;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/PlaybackMethod;

    const/16 v12, 0x8

    new-array v12, v12, [Lcom/explorestack/protobuf/adcom/PlaybackMethod;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    aput-object v7, v12, v10

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    aput-object v13, v12, v14

    .line 9
    sput-object v12, Lcom/explorestack/protobuf/adcom/PlaybackMethod;->$VALUES:[Lcom/explorestack/protobuf/adcom/PlaybackMethod;

    .line 106
    new-instance v0, Lcom/explorestack/protobuf/adcom/PlaybackMethod$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/PlaybackMethod$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/PlaybackMethod;->internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;

    .line 126
    invoke-static {}, Lcom/explorestack/protobuf/adcom/PlaybackMethod;->values()[Lcom/explorestack/protobuf/adcom/PlaybackMethod;

    move-result-object v0

    sput-object v0, Lcom/explorestack/protobuf/adcom/PlaybackMethod;->VALUES:[Lcom/explorestack/protobuf/adcom/PlaybackMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 142
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 143
    iput p3, p0, Lcom/explorestack/protobuf/adcom/PlaybackMethod;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/explorestack/protobuf/adcom/PlaybackMethod;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 96
    :pswitch_0
    sget-object p0, Lcom/explorestack/protobuf/adcom/PlaybackMethod;->PLAYBACK_METHOD_ON_ENTERING_VIEWPORT_SOUND_OFF:Lcom/explorestack/protobuf/adcom/PlaybackMethod;

    return-object p0

    .line 95
    :pswitch_1
    sget-object p0, Lcom/explorestack/protobuf/adcom/PlaybackMethod;->PLAYBACK_METHOD_ON_ENTERING_VIEWPORT_SOUND_ON:Lcom/explorestack/protobuf/adcom/PlaybackMethod;

    return-object p0

    .line 94
    :pswitch_2
    sget-object p0, Lcom/explorestack/protobuf/adcom/PlaybackMethod;->PLAYBACK_METHOD_ON_MOUSE_OVER_SOUND_ON:Lcom/explorestack/protobuf/adcom/PlaybackMethod;

    return-object p0

    .line 93
    :pswitch_3
    sget-object p0, Lcom/explorestack/protobuf/adcom/PlaybackMethod;->PLAYBACK_METHOD_ON_CLICK_SOUND_ON:Lcom/explorestack/protobuf/adcom/PlaybackMethod;

    return-object p0

    .line 92
    :pswitch_4
    sget-object p0, Lcom/explorestack/protobuf/adcom/PlaybackMethod;->PLAYBACK_METHOD_ON_PAGE_LOAD_SOUND_OFF:Lcom/explorestack/protobuf/adcom/PlaybackMethod;

    return-object p0

    .line 91
    :pswitch_5
    sget-object p0, Lcom/explorestack/protobuf/adcom/PlaybackMethod;->PLAYBACK_METHOD_ON_PAGE_LOAD_SOUND_ON:Lcom/explorestack/protobuf/adcom/PlaybackMethod;

    return-object p0

    .line 90
    :pswitch_6
    sget-object p0, Lcom/explorestack/protobuf/adcom/PlaybackMethod;->PLAYBACK_METHOD_INVALID:Lcom/explorestack/protobuf/adcom/PlaybackMethod;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .line 123
    invoke-static {}, Lcom/explorestack/protobuf/adcom/AdcomProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    return-object v0
.end method

.method public static internalGetValueMap()Lcom/explorestack/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
            "Lcom/explorestack/protobuf/adcom/PlaybackMethod;",
            ">;"
        }
    .end annotation

    .line 103
    sget-object v0, Lcom/explorestack/protobuf/adcom/PlaybackMethod;->internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/explorestack/protobuf/adcom/PlaybackMethod;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 85
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/PlaybackMethod;->forNumber(I)Lcom/explorestack/protobuf/adcom/PlaybackMethod;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;)Lcom/explorestack/protobuf/adcom/PlaybackMethod;
    .locals 2

    .line 130
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/explorestack/protobuf/adcom/PlaybackMethod;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 134
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 135
    sget-object p0, Lcom/explorestack/protobuf/adcom/PlaybackMethod;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/PlaybackMethod;

    return-object p0

    .line 137
    :cond_0
    sget-object v0, Lcom/explorestack/protobuf/adcom/PlaybackMethod;->VALUES:[Lcom/explorestack/protobuf/adcom/PlaybackMethod;

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 131
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/PlaybackMethod;
    .locals 1

    .line 9
    const-class v0, Lcom/explorestack/protobuf/adcom/PlaybackMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/PlaybackMethod;

    return-object p0
.end method

.method public static values()[Lcom/explorestack/protobuf/adcom/PlaybackMethod;
    .locals 1

    .line 9
    sget-object v0, Lcom/explorestack/protobuf/adcom/PlaybackMethod;->$VALUES:[Lcom/explorestack/protobuf/adcom/PlaybackMethod;

    invoke-virtual {v0}, [Lcom/explorestack/protobuf/adcom/PlaybackMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/explorestack/protobuf/adcom/PlaybackMethod;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .line 119
    invoke-static {}, Lcom/explorestack/protobuf/adcom/PlaybackMethod;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 2

    .line 73
    sget-object v0, Lcom/explorestack/protobuf/adcom/PlaybackMethod;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/PlaybackMethod;

    if-eq p0, v0, :cond_0

    .line 77
    iget v0, p0, Lcom/explorestack/protobuf/adcom/PlaybackMethod;->value:I

    return v0

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getValueDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .line 115
    invoke-static {}, Lcom/explorestack/protobuf/adcom/PlaybackMethod;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/PlaybackMethod;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
