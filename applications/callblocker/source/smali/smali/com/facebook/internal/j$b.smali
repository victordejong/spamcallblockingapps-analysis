.class public final enum Lcom/facebook/internal/j$b;
.super Ljava/lang/Enum;
.source "FeatureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/internal/j$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/internal/j$b;

.field public static final enum b:Lcom/facebook/internal/j$b;

.field public static final enum c:Lcom/facebook/internal/j$b;

.field public static final enum d:Lcom/facebook/internal/j$b;

.field public static final enum e:Lcom/facebook/internal/j$b;

.field public static final enum f:Lcom/facebook/internal/j$b;

.field public static final enum g:Lcom/facebook/internal/j$b;

.field public static final enum h:Lcom/facebook/internal/j$b;

.field public static final enum i:Lcom/facebook/internal/j$b;

.field public static final enum j:Lcom/facebook/internal/j$b;

.field public static final enum k:Lcom/facebook/internal/j$b;

.field public static final enum l:Lcom/facebook/internal/j$b;

.field public static final enum m:Lcom/facebook/internal/j$b;

.field public static final enum n:Lcom/facebook/internal/j$b;

.field public static final enum o:Lcom/facebook/internal/j$b;

.field public static final enum p:Lcom/facebook/internal/j$b;

.field private static final synthetic r:[Lcom/facebook/internal/j$b;


# instance fields
.field private final q:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 108
    new-instance v0, Lcom/facebook/internal/j$b;

    const-string/jumbo v1, "Unknown"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/internal/j$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/j$b;->a:Lcom/facebook/internal/j$b;

    .line 111
    new-instance v0, Lcom/facebook/internal/j$b;

    const-string/jumbo v1, "Core"

    invoke-direct {v0, v1, v5, v4}, Lcom/facebook/internal/j$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/j$b;->b:Lcom/facebook/internal/j$b;

    .line 113
    new-instance v0, Lcom/facebook/internal/j$b;

    const-string/jumbo v1, "AppEvents"

    const/high16 v2, 0x10000

    invoke-direct {v0, v1, v6, v2}, Lcom/facebook/internal/j$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/j$b;->c:Lcom/facebook/internal/j$b;

    .line 114
    new-instance v0, Lcom/facebook/internal/j$b;

    const-string/jumbo v1, "CodelessEvents"

    const v2, 0x10100

    invoke-direct {v0, v1, v7, v2}, Lcom/facebook/internal/j$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/j$b;->d:Lcom/facebook/internal/j$b;

    .line 115
    new-instance v0, Lcom/facebook/internal/j$b;

    const-string/jumbo v1, "RestrictiveDataFiltering"

    const v2, 0x10200

    invoke-direct {v0, v1, v8, v2}, Lcom/facebook/internal/j$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/j$b;->e:Lcom/facebook/internal/j$b;

    .line 116
    new-instance v0, Lcom/facebook/internal/j$b;

    const-string/jumbo v1, "AAM"

    const/4 v2, 0x5

    const v3, 0x10300

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/internal/j$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/j$b;->f:Lcom/facebook/internal/j$b;

    .line 117
    new-instance v0, Lcom/facebook/internal/j$b;

    const-string/jumbo v1, "PrivacyProtection"

    const/4 v2, 0x6

    const v3, 0x10400

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/internal/j$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/j$b;->g:Lcom/facebook/internal/j$b;

    .line 118
    new-instance v0, Lcom/facebook/internal/j$b;

    const-string/jumbo v1, "SuggestedEvents"

    const/4 v2, 0x7

    const v3, 0x10401

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/internal/j$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/j$b;->h:Lcom/facebook/internal/j$b;

    .line 119
    new-instance v0, Lcom/facebook/internal/j$b;

    const-string/jumbo v1, "PIIFiltering"

    const/16 v2, 0x8

    const v3, 0x10402

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/internal/j$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/j$b;->i:Lcom/facebook/internal/j$b;

    .line 120
    new-instance v0, Lcom/facebook/internal/j$b;

    const-string/jumbo v1, "EventDeactivation"

    const/16 v2, 0x9

    const v3, 0x10500

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/internal/j$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/j$b;->j:Lcom/facebook/internal/j$b;

    .line 122
    new-instance v0, Lcom/facebook/internal/j$b;

    const-string/jumbo v1, "Instrument"

    const/16 v2, 0xa

    const/high16 v3, 0x20000

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/internal/j$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/j$b;->k:Lcom/facebook/internal/j$b;

    .line 123
    new-instance v0, Lcom/facebook/internal/j$b;

    const-string/jumbo v1, "CrashReport"

    const/16 v2, 0xb

    const v3, 0x20100

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/internal/j$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/j$b;->l:Lcom/facebook/internal/j$b;

    .line 124
    new-instance v0, Lcom/facebook/internal/j$b;

    const-string/jumbo v1, "ErrorReport"

    const/16 v2, 0xc

    const v3, 0x20200

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/internal/j$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/j$b;->m:Lcom/facebook/internal/j$b;

    .line 128
    new-instance v0, Lcom/facebook/internal/j$b;

    const-string/jumbo v1, "Login"

    const/16 v2, 0xd

    const/high16 v3, 0x1000000

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/internal/j$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/j$b;->n:Lcom/facebook/internal/j$b;

    .line 132
    new-instance v0, Lcom/facebook/internal/j$b;

    const-string/jumbo v1, "Share"

    const/16 v2, 0xe

    const/high16 v3, 0x2000000

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/internal/j$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/j$b;->o:Lcom/facebook/internal/j$b;

    .line 136
    new-instance v0, Lcom/facebook/internal/j$b;

    const-string/jumbo v1, "Places"

    const/16 v2, 0xf

    const/high16 v3, 0x3000000

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/internal/j$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/j$b;->p:Lcom/facebook/internal/j$b;

    .line 107
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/facebook/internal/j$b;

    sget-object v1, Lcom/facebook/internal/j$b;->a:Lcom/facebook/internal/j$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/internal/j$b;->b:Lcom/facebook/internal/j$b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/internal/j$b;->c:Lcom/facebook/internal/j$b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/internal/j$b;->d:Lcom/facebook/internal/j$b;

    aput-object v1, v0, v7

    sget-object v1, Lcom/facebook/internal/j$b;->e:Lcom/facebook/internal/j$b;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/internal/j$b;->f:Lcom/facebook/internal/j$b;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/facebook/internal/j$b;->g:Lcom/facebook/internal/j$b;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/facebook/internal/j$b;->h:Lcom/facebook/internal/j$b;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/facebook/internal/j$b;->i:Lcom/facebook/internal/j$b;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/facebook/internal/j$b;->j:Lcom/facebook/internal/j$b;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/facebook/internal/j$b;->k:Lcom/facebook/internal/j$b;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/facebook/internal/j$b;->l:Lcom/facebook/internal/j$b;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/facebook/internal/j$b;->m:Lcom/facebook/internal/j$b;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/facebook/internal/j$b;->n:Lcom/facebook/internal/j$b;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/facebook/internal/j$b;->o:Lcom/facebook/internal/j$b;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/facebook/internal/j$b;->p:Lcom/facebook/internal/j$b;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/internal/j$b;->r:[Lcom/facebook/internal/j$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 140
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 141
    iput p3, p0, Lcom/facebook/internal/j$b;->q:I

    .line 142
    return-void
.end method

.method static a(I)Lcom/facebook/internal/j$b;
    .locals 5

    .prologue
    .line 173
    invoke-static {}, Lcom/facebook/internal/j$b;->values()[Lcom/facebook/internal/j$b;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 174
    iget v4, v0, Lcom/facebook/internal/j$b;->q:I

    if-ne v4, p0, :cond_0

    .line 179
    :goto_1
    return-object v0

    .line 173
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 179
    :cond_1
    sget-object v0, Lcom/facebook/internal/j$b;->a:Lcom/facebook/internal/j$b;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/internal/j$b;
    .locals 1

    .prologue
    .line 107
    const-class v0, Lcom/facebook/internal/j$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/j$b;

    return-object v0
.end method

.method public static values()[Lcom/facebook/internal/j$b;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/facebook/internal/j$b;->r:[Lcom/facebook/internal/j$b;

    invoke-virtual {v0}, [Lcom/facebook/internal/j$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/internal/j$b;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/facebook/internal/j$b;
    .locals 2

    .prologue
    .line 183
    iget v0, p0, Lcom/facebook/internal/j$b;->q:I

    and-int/lit16 v0, v0, 0xff

    if-lez v0, :cond_0

    .line 184
    iget v0, p0, Lcom/facebook/internal/j$b;->q:I

    and-int/lit16 v0, v0, -0x100

    invoke-static {v0}, Lcom/facebook/internal/j$b;->a(I)Lcom/facebook/internal/j$b;

    move-result-object v0

    .line 190
    :goto_0
    return-object v0

    .line 185
    :cond_0
    iget v0, p0, Lcom/facebook/internal/j$b;->q:I

    const v1, 0xff00

    and-int/2addr v0, v1

    if-lez v0, :cond_1

    .line 186
    iget v0, p0, Lcom/facebook/internal/j$b;->q:I

    const/high16 v1, -0x10000

    and-int/2addr v0, v1

    invoke-static {v0}, Lcom/facebook/internal/j$b;->a(I)Lcom/facebook/internal/j$b;

    move-result-object v0

    goto :goto_0

    .line 187
    :cond_1
    iget v0, p0, Lcom/facebook/internal/j$b;->q:I

    const/high16 v1, 0xff0000

    and-int/2addr v0, v1

    if-lez v0, :cond_2

    .line 188
    iget v0, p0, Lcom/facebook/internal/j$b;->q:I

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    invoke-static {v0}, Lcom/facebook/internal/j$b;->a(I)Lcom/facebook/internal/j$b;

    move-result-object v0

    goto :goto_0

    .line 190
    :cond_2
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/internal/j$b;->a(I)Lcom/facebook/internal/j$b;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 146
    const-string/jumbo v0, "unknown"

    .line 148
    sget-object v1, Lcom/facebook/internal/j$2;->a:[I

    invoke-virtual {p0}, Lcom/facebook/internal/j$b;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 169
    :goto_0
    return-object v0

    .line 149
    :pswitch_0
    const-string/jumbo v0, "CoreKit"

    goto :goto_0

    .line 150
    :pswitch_1
    const-string/jumbo v0, "AppEvents"

    goto :goto_0

    .line 151
    :pswitch_2
    const-string/jumbo v0, "CodelessEvents"

    goto :goto_0

    .line 152
    :pswitch_3
    const-string/jumbo v0, "RestrictiveDataFiltering"

    goto :goto_0

    .line 153
    :pswitch_4
    const-string/jumbo v0, "Instrument"

    goto :goto_0

    .line 154
    :pswitch_5
    const-string/jumbo v0, "CrashReport"

    goto :goto_0

    .line 155
    :pswitch_6
    const-string/jumbo v0, "ErrorReport"

    goto :goto_0

    .line 156
    :pswitch_7
    const-string/jumbo v0, "AAM"

    goto :goto_0

    .line 157
    :pswitch_8
    const-string/jumbo v0, "PrivacyProtection"

    goto :goto_0

    .line 158
    :pswitch_9
    const-string/jumbo v0, "SuggestedEvents"

    goto :goto_0

    .line 159
    :pswitch_a
    const-string/jumbo v0, "PIIFiltering"

    goto :goto_0

    .line 160
    :pswitch_b
    const-string/jumbo v0, "EventDeactivation"

    goto :goto_0

    .line 162
    :pswitch_c
    const-string/jumbo v0, "LoginKit"

    goto :goto_0

    .line 164
    :pswitch_d
    const-string/jumbo v0, "ShareKit"

    goto :goto_0

    .line 166
    :pswitch_e
    const-string/jumbo v0, "PlacesKit"

    goto :goto_0

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method
