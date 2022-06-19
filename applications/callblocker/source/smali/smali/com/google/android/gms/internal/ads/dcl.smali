.class final Lcom/google/android/gms/internal/ads/dcl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/gms/internal/ads/dcn",
        "<TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final d:Lcom/google/android/gms/internal/ads/dcl;


# instance fields
.field final a:Lcom/google/android/gms/internal/ads/dfe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dfe",
            "<TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 279
    new-instance v0, Lcom/google/android/gms/internal/ads/dcl;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/dcl;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/ads/dcl;->d:Lcom/google/android/gms/internal/ads/dcl;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dfe;->a(I)Lcom/google/android/gms/internal/ads/dfe;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dcl;->a:Lcom/google/android/gms/internal/ads/dfe;

    .line 3
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/dfe;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dfe",
            "<TT;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dcl;->a:Lcom/google/android/gms/internal/ads/dfe;

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dcl;->b()V

    .line 10
    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    .prologue
    .line 4
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dfe;->a(I)Lcom/google/android/gms/internal/ads/dfe;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dcl;-><init>(Lcom/google/android/gms/internal/ads/dfe;)V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dcl;->b()V

    .line 6
    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/dcn;Ljava/lang/Object;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dcn",
            "<*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 248
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/dcn;->b()Lcom/google/android/gms/internal/ads/dgi;

    move-result-object v1

    .line 249
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/dcn;->a()I

    move-result v2

    .line 250
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/dcn;->d()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 251
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/dcn;->e()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 253
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 254
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/ads/dcl;->b(Lcom/google/android/gms/internal/ads/dgi;Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v0, v4

    .line 255
    goto :goto_0

    .line 257
    :cond_0
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzebk;->e(I)I

    move-result v1

    add-int/2addr v1, v0

    .line 258
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzebk;->l(I)I

    move-result v0

    add-int/2addr v0, v1

    .line 265
    :cond_1
    :goto_1
    return v0

    .line 261
    :cond_2
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 262
    invoke-static {v1, v2, v4}, Lcom/google/android/gms/internal/ads/dcl;->a(Lcom/google/android/gms/internal/ads/dgi;ILjava/lang/Object;)I

    move-result v4

    add-int/2addr v0, v4

    .line 263
    goto :goto_2

    .line 265
    :cond_3
    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/ads/dcl;->a(Lcom/google/android/gms/internal/ads/dgi;ILjava/lang/Object;)I

    move-result v0

    goto :goto_1
.end method

.method static a(Lcom/google/android/gms/internal/ads/dgi;ILjava/lang/Object;)I
    .locals 2

    .prologue
    .line 215
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzebk;->e(I)I

    move-result v1

    .line 216
    sget-object v0, Lcom/google/android/gms/internal/ads/dgi;->j:Lcom/google/android/gms/internal/ads/dgi;

    if-ne p0, v0, :cond_0

    move-object v0, p2

    .line 217
    check-cast v0, Lcom/google/android/gms/internal/ads/deg;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dcz;->a(Lcom/google/android/gms/internal/ads/deg;)Z

    .line 218
    shl-int/lit8 v0, v1, 0x1

    .line 219
    :goto_0
    invoke-static {p0, p2}, Lcom/google/android/gms/internal/ads/dcl;->b(Lcom/google/android/gms/internal/ads/dgi;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static a()Lcom/google/android/gms/internal/ads/dcl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/internal/ads/dcn",
            "<TT;>;>()",
            "Lcom/google/android/gms/internal/ads/dcl",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 11
    sget-object v0, Lcom/google/android/gms/internal/ads/dcl;->d:Lcom/google/android/gms/internal/ads/dcl;

    return-object v0
.end method

.method private final a(Lcom/google/android/gms/internal/ads/dcn;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dcl;->a:Lcom/google/android/gms/internal/ads/dfe;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dfe;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 32
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/ddg;

    if-eqz v1, :cond_0

    .line 33
    check-cast v0, Lcom/google/android/gms/internal/ads/ddg;

    invoke-static {}, Lcom/google/android/gms/internal/ads/ddg;->a()Lcom/google/android/gms/internal/ads/deg;

    move-result-object v0

    .line 34
    :cond_0
    return-object v0
.end method

.method private static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 97
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/del;

    if-eqz v0, :cond_1

    .line 98
    check-cast p0, Lcom/google/android/gms/internal/ads/del;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/del;->a()Lcom/google/android/gms/internal/ads/del;

    move-result-object p0

    .line 104
    :cond_0
    :goto_0
    return-object p0

    .line 99
    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_0

    .line 100
    check-cast p0, [B

    .line 101
    array-length v0, p0

    new-array v0, v0, [B

    .line 102
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    .line 103
    goto :goto_0
.end method

.method private static a(Lcom/google/android/gms/internal/ads/dgi;Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 50
    .line 51
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dcz;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v2, Lcom/google/android/gms/internal/ads/dco;->a:[I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dgi;->a()Lcom/google/android/gms/internal/ads/dgp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/dgp;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 63
    :cond_0
    :goto_0
    if-nez v0, :cond_4

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Wrong object type used with protocol message reflection."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :pswitch_0
    instance-of v0, p1, Ljava/lang/Integer;

    goto :goto_0

    .line 54
    :pswitch_1
    instance-of v0, p1, Ljava/lang/Long;

    goto :goto_0

    .line 55
    :pswitch_2
    instance-of v0, p1, Ljava/lang/Float;

    goto :goto_0

    .line 56
    :pswitch_3
    instance-of v0, p1, Ljava/lang/Double;

    goto :goto_0

    .line 57
    :pswitch_4
    instance-of v0, p1, Ljava/lang/Boolean;

    goto :goto_0

    .line 58
    :pswitch_5
    instance-of v0, p1, Ljava/lang/String;

    goto :goto_0

    .line 59
    :pswitch_6
    instance-of v2, p1, Lcom/google/android/gms/internal/ads/dbi;

    if-nez v2, :cond_1

    instance-of v2, p1, [B

    if-eqz v2, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 60
    :pswitch_7
    instance-of v2, p1, Ljava/lang/Integer;

    if-nez v2, :cond_2

    instance-of v2, p1, Lcom/google/android/gms/internal/ads/dcy;

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 61
    :pswitch_8
    instance-of v2, p1, Lcom/google/android/gms/internal/ads/deg;

    if-nez v2, :cond_3

    instance-of v2, p1, Lcom/google/android/gms/internal/ads/ddg;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 65
    :cond_4
    return-void

    .line 52
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method static a(Lcom/google/android/gms/internal/ads/zzebk;Lcom/google/android/gms/internal/ads/dgi;ILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 131
    sget-object v0, Lcom/google/android/gms/internal/ads/dgi;->j:Lcom/google/android/gms/internal/ads/dgi;

    if-ne p1, v0, :cond_0

    move-object v0, p3

    .line 132
    check-cast v0, Lcom/google/android/gms/internal/ads/deg;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dcz;->a(Lcom/google/android/gms/internal/ads/deg;)Z

    .line 133
    check-cast p3, Lcom/google/android/gms/internal/ads/deg;

    .line 134
    const/4 v0, 0x3

    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzebk;->a(II)V

    .line 136
    invoke-interface {p3, p0}, Lcom/google/android/gms/internal/ads/deg;->a(Lcom/google/android/gms/internal/ads/zzebk;)V

    .line 137
    const/4 v0, 0x4

    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzebk;->a(II)V

    .line 193
    :goto_0
    return-void

    .line 140
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dgi;->b()I

    move-result v0

    .line 141
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzebk;->a(II)V

    .line 143
    sget-object v0, Lcom/google/android/gms/internal/ads/dco;->b:[I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dgi;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 144
    :pswitch_0
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzebk;->a(D)V

    goto :goto_0

    .line 146
    :pswitch_1
    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzebk;->a(F)V

    goto :goto_0

    .line 148
    :pswitch_2
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 149
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzebk;->a(J)V

    goto :goto_0

    .line 151
    :pswitch_3
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzebk;->a(J)V

    goto :goto_0

    .line 153
    :pswitch_4
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzebk;->a(I)V

    goto :goto_0

    .line 155
    :pswitch_5
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzebk;->c(J)V

    goto :goto_0

    .line 157
    :pswitch_6
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzebk;->d(I)V

    goto :goto_0

    .line 159
    :pswitch_7
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzebk;->a(Z)V

    goto :goto_0

    .line 161
    :pswitch_8
    check-cast p3, Lcom/google/android/gms/internal/ads/deg;

    .line 162
    invoke-interface {p3, p0}, Lcom/google/android/gms/internal/ads/deg;->a(Lcom/google/android/gms/internal/ads/zzebk;)V

    goto :goto_0

    .line 164
    :pswitch_9
    check-cast p3, Lcom/google/android/gms/internal/ads/deg;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zzebk;->a(Lcom/google/android/gms/internal/ads/deg;)V

    goto :goto_0

    .line 166
    :pswitch_a
    instance-of v0, p3, Lcom/google/android/gms/internal/ads/dbi;

    if-eqz v0, :cond_1

    .line 167
    check-cast p3, Lcom/google/android/gms/internal/ads/dbi;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zzebk;->a(Lcom/google/android/gms/internal/ads/dbi;)V

    goto :goto_0

    .line 168
    :cond_1
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zzebk;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 170
    :pswitch_b
    instance-of v0, p3, Lcom/google/android/gms/internal/ads/dbi;

    if-eqz v0, :cond_2

    .line 171
    check-cast p3, Lcom/google/android/gms/internal/ads/dbi;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zzebk;->a(Lcom/google/android/gms/internal/ads/dbi;)V

    goto/16 :goto_0

    .line 172
    :cond_2
    check-cast p3, [B

    .line 173
    const/4 v0, 0x0

    array-length v1, p3

    invoke-virtual {p0, p3, v0, v1}, Lcom/google/android/gms/internal/ads/zzebk;->b([BII)V

    goto/16 :goto_0

    .line 175
    :pswitch_c
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzebk;->b(I)V

    goto/16 :goto_0

    .line 177
    :pswitch_d
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 178
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzebk;->d(I)V

    goto/16 :goto_0

    .line 180
    :pswitch_e
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 181
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzebk;->c(J)V

    goto/16 :goto_0

    .line 183
    :pswitch_f
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzebk;->c(I)V

    goto/16 :goto_0

    .line 185
    :pswitch_10
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzebk;->b(J)V

    goto/16 :goto_0

    .line 187
    :pswitch_11
    instance-of v0, p3, Lcom/google/android/gms/internal/ads/dcy;

    if-eqz v0, :cond_3

    .line 188
    check-cast p3, Lcom/google/android/gms/internal/ads/dcy;

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/dcy;->a()I

    move-result v0

    .line 189
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzebk;->a(I)V

    goto/16 :goto_0

    .line 191
    :cond_3
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 192
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzebk;->a(I)V

    goto/16 :goto_0

    .line 143
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method private static a(Ljava/util/Map$Entry;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/internal/ads/dcn",
            "<TT;>;>(",
            "Ljava/util/Map$Entry",
            "<TT;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 75
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dcn;

    .line 76
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dcn;->c()Lcom/google/android/gms/internal/ads/dgp;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/ads/dgp;->i:Lcom/google/android/gms/internal/ads/dgp;

    if-ne v3, v4, :cond_4

    .line 77
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dcn;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/deg;

    .line 79
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/deg;->o()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 89
    :goto_0
    return v0

    .line 82
    :cond_1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 83
    instance-of v3, v0, Lcom/google/android/gms/internal/ads/deg;

    if-eqz v3, :cond_2

    .line 84
    check-cast v0, Lcom/google/android/gms/internal/ads/deg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/deg;->o()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 85
    goto :goto_0

    .line 86
    :cond_2
    instance-of v0, v0, Lcom/google/android/gms/internal/ads/ddg;

    if-eqz v0, :cond_3

    move v0, v2

    .line 87
    goto :goto_0

    .line 88
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Wrong object type used with protocol message reflection."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move v0, v2

    .line 89
    goto :goto_0
.end method

.method private static b(Lcom/google/android/gms/internal/ads/dgi;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 220
    sget-object v0, Lcom/google/android/gms/internal/ads/dco;->b:[I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dgi;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 247
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :pswitch_0
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzebk;->b(D)I

    move-result v0

    .line 246
    :goto_0
    return v0

    .line 222
    :pswitch_1
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzebk;->b(F)I

    move-result v0

    goto :goto_0

    .line 223
    :pswitch_2
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzebk;->d(J)I

    move-result v0

    goto :goto_0

    .line 224
    :pswitch_3
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzebk;->e(J)I

    move-result v0

    goto :goto_0

    .line 225
    :pswitch_4
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzebk;->f(I)I

    move-result v0

    goto :goto_0

    .line 226
    :pswitch_5
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzebk;->g(J)I

    move-result v0

    goto :goto_0

    .line 227
    :pswitch_6
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzebk;->i(I)I

    move-result v0

    goto :goto_0

    .line 228
    :pswitch_7
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzebk;->b(Z)I

    move-result v0

    goto :goto_0

    .line 229
    :pswitch_8
    check-cast p1, Lcom/google/android/gms/internal/ads/deg;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzebk;->c(Lcom/google/android/gms/internal/ads/deg;)I

    move-result v0

    goto :goto_0

    .line 230
    :pswitch_9
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/dbi;

    if-eqz v0, :cond_0

    .line 231
    check-cast p1, Lcom/google/android/gms/internal/ads/dbi;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzebk;->b(Lcom/google/android/gms/internal/ads/dbi;)I

    move-result v0

    goto :goto_0

    .line 232
    :cond_0
    check-cast p1, [B

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzebk;->b([B)I

    move-result v0

    goto :goto_0

    .line 233
    :pswitch_a
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/dbi;

    if-eqz v0, :cond_1

    .line 234
    check-cast p1, Lcom/google/android/gms/internal/ads/dbi;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzebk;->b(Lcom/google/android/gms/internal/ads/dbi;)I

    move-result v0

    goto :goto_0

    .line 235
    :cond_1
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzebk;->b(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 236
    :pswitch_b
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzebk;->g(I)I

    move-result v0

    goto/16 :goto_0

    .line 237
    :pswitch_c
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzebk;->j(I)I

    move-result v0

    goto/16 :goto_0

    .line 238
    :pswitch_d
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzebk;->h(J)I

    move-result v0

    goto/16 :goto_0

    .line 239
    :pswitch_e
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzebk;->h(I)I

    move-result v0

    goto/16 :goto_0

    .line 240
    :pswitch_f
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzebk;->f(J)I

    move-result v0

    goto/16 :goto_0

    .line 241
    :pswitch_10
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/ddg;

    if-eqz v0, :cond_2

    .line 242
    check-cast p1, Lcom/google/android/gms/internal/ads/ddg;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzebk;->a(Lcom/google/android/gms/internal/ads/ddk;)I

    move-result v0

    goto/16 :goto_0

    .line 243
    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/ads/deg;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzebk;->b(Lcom/google/android/gms/internal/ads/deg;)I

    move-result v0

    goto/16 :goto_0

    .line 244
    :pswitch_11
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/dcy;

    if-eqz v0, :cond_3

    .line 245
    check-cast p1, Lcom/google/android/gms/internal/ads/dcy;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/dcy;->a()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzebk;->k(I)I

    move-result v0

    goto/16 :goto_0

    .line 246
    :cond_3
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzebk;->k(I)I

    move-result v0

    goto/16 :goto_0

    .line 220
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_10
        :pswitch_a
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_11
    .end packed-switch
.end method

.method private final b(Lcom/google/android/gms/internal/ads/dcn;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/dcn;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    instance-of v0, p2, Ljava/util/List;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Wrong object type used with protocol message reflection."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 39
    check-cast p2, Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object v0, v1

    .line 40
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    .line 41
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/dcn;->b()Lcom/google/android/gms/internal/ads/dgi;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/ads/dcl;->a(Lcom/google/android/gms/internal/ads/dgi;Ljava/lang/Object;)V

    goto :goto_0

    .line 45
    :cond_1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/dcn;->b()Lcom/google/android/gms/internal/ads/dgi;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/dcl;->a(Lcom/google/android/gms/internal/ads/dgi;Ljava/lang/Object;)V

    move-object v1, p2

    .line 46
    :cond_2
    instance-of v0, v1, Lcom/google/android/gms/internal/ads/ddg;

    if-eqz v0, :cond_3

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dcl;->c:Z

    .line 48
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dcl;->a:Lcom/google/android/gms/internal/ads/dfe;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/dfe;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-void
.end method

.method private final b(Ljava/util/Map$Entry;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TT;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dcn;

    .line 106
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 107
    instance-of v2, v1, Lcom/google/android/gms/internal/ads/ddg;

    if-eqz v2, :cond_0

    .line 108
    check-cast v1, Lcom/google/android/gms/internal/ads/ddg;

    invoke-static {}, Lcom/google/android/gms/internal/ads/ddg;->a()Lcom/google/android/gms/internal/ads/deg;

    move-result-object v1

    .line 109
    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dcn;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 110
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dcl;->a(Lcom/google/android/gms/internal/ads/dcn;)Ljava/lang/Object;

    move-result-object v2

    .line 111
    if-nez v2, :cond_1

    .line 112
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 113
    :cond_1
    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v1, v2

    .line 114
    check-cast v1, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/dcl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 116
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dcl;->a:Lcom/google/android/gms/internal/ads/dfe;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/dfe;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :goto_1
    return-void

    .line 117
    :cond_3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dcn;->c()Lcom/google/android/gms/internal/ads/dgp;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/dgp;->i:Lcom/google/android/gms/internal/ads/dgp;

    if-ne v2, v3, :cond_6

    .line 118
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dcl;->a(Lcom/google/android/gms/internal/ads/dcn;)Ljava/lang/Object;

    move-result-object v2

    .line 119
    if-nez v2, :cond_4

    .line 120
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dcl;->a:Lcom/google/android/gms/internal/ads/dfe;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/dcl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/dfe;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 121
    :cond_4
    instance-of v3, v2, Lcom/google/android/gms/internal/ads/del;

    if-eqz v3, :cond_5

    .line 122
    check-cast v2, Lcom/google/android/gms/internal/ads/del;

    check-cast v1, Lcom/google/android/gms/internal/ads/del;

    .line 123
    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/dcn;->a(Lcom/google/android/gms/internal/ads/del;Lcom/google/android/gms/internal/ads/del;)Lcom/google/android/gms/internal/ads/del;

    move-result-object v1

    .line 127
    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dcl;->a:Lcom/google/android/gms/internal/ads/dfe;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/dfe;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 124
    :cond_5
    check-cast v2, Lcom/google/android/gms/internal/ads/deg;

    .line 125
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/deg;->u()Lcom/google/android/gms/internal/ads/def;

    move-result-object v2

    check-cast v1, Lcom/google/android/gms/internal/ads/deg;

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/dcn;->a(Lcom/google/android/gms/internal/ads/def;Lcom/google/android/gms/internal/ads/deg;)Lcom/google/android/gms/internal/ads/def;

    move-result-object v1

    .line 126
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/def;->g()Lcom/google/android/gms/internal/ads/deg;

    move-result-object v1

    goto :goto_2

    .line 129
    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dcl;->a:Lcom/google/android/gms/internal/ads/dfe;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/dcl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/dfe;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private static c(Ljava/util/Map$Entry;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TT;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 202
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dcn;

    .line 203
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 204
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dcn;->c()Lcom/google/android/gms/internal/ads/dgp;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/dgp;->i:Lcom/google/android/gms/internal/ads/dgp;

    if-ne v2, v3, :cond_1

    .line 205
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dcn;->d()Z

    move-result v2

    if-nez v2, :cond_1

    .line 206
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dcn;->e()Z

    move-result v2

    if-nez v2, :cond_1

    .line 207
    instance-of v0, v1, Lcom/google/android/gms/internal/ads/ddg;

    if-eqz v0, :cond_0

    .line 209
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dcn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dcn;->a()I

    move-result v2

    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/internal/ads/ddg;

    .line 210
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzebk;->b(ILcom/google/android/gms/internal/ads/ddk;)I

    move-result v0

    .line 214
    :goto_0
    return v0

    .line 212
    :cond_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dcn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dcn;->a()I

    move-result v0

    check-cast v1, Lcom/google/android/gms/internal/ads/deg;

    .line 213
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzebk;->b(ILcom/google/android/gms/internal/ads/deg;)I

    move-result v0

    goto :goto_0

    .line 214
    :cond_1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dcl;->a(Lcom/google/android/gms/internal/ads/dcn;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/dcl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dcl",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 90
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/dcl;->a:Lcom/google/android/gms/internal/ads/dfe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dfe;->c()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 91
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/dcl;->a:Lcom/google/android/gms/internal/ads/dfe;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/dfe;->b(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/dcl;->b(Ljava/util/Map$Entry;)V

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/dcl;->a:Lcom/google/android/gms/internal/ads/dfe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dfe;->d()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 94
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dcl;->b(Ljava/util/Map$Entry;)V

    goto :goto_1

    .line 96
    :cond_1
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 12
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dcl;->b:Z

    if-eqz v0, :cond_0

    .line 16
    :goto_0
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dcl;->a:Lcom/google/android/gms/internal/ads/dfe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dfe;->a()V

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dcl;->b:Z

    goto :goto_0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dcl;->b:Z

    return v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 266
    .line 267
    new-instance v2, Lcom/google/android/gms/internal/ads/dcl;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/dcl;-><init>()V

    .line 269
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dcl;->a:Lcom/google/android/gms/internal/ads/dfe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dfe;->c()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dcl;->a:Lcom/google/android/gms/internal/ads/dfe;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dfe;->b(I)Ljava/util/Map$Entry;

    move-result-object v3

    .line 271
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dcn;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/internal/ads/dcl;->b(Lcom/google/android/gms/internal/ads/dcn;Ljava/lang/Object;)V

    .line 272
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dcl;->a:Lcom/google/android/gms/internal/ads/dfe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dfe;->d()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 274
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/dcn;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/internal/ads/dcl;->b(Lcom/google/android/gms/internal/ads/dcn;Ljava/lang/Object;)V

    goto :goto_1

    .line 276
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dcl;->c:Z

    iput-boolean v0, v2, Lcom/google/android/gms/internal/ads/dcl;->c:Z

    .line 278
    return-object v2
.end method

.method public final d()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TT;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dcl;->c:Z

    if-eqz v0, :cond_0

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/ads/ddl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dcl;->a:Lcom/google/android/gms/internal/ads/dfe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dfe;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/ddl;-><init>(Ljava/util/Iterator;)V

    .line 27
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dcl;->a:Lcom/google/android/gms/internal/ads/dfe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dfe;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method final e()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TT;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dcl;->c:Z

    if-eqz v0, :cond_0

    .line 29
    new-instance v0, Lcom/google/android/gms/internal/ads/ddl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dcl;->a:Lcom/google/android/gms/internal/ads/dfe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dfe;->e()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/ddl;-><init>(Ljava/util/Iterator;)V

    .line 30
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dcl;->a:Lcom/google/android/gms/internal/ads/dfe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dfe;->e()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 18
    if-ne p0, p1, :cond_0

    .line 19
    const/4 v0, 0x1

    .line 23
    :goto_0
    return v0

    .line 20
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/dcl;

    if-nez v0, :cond_1

    .line 21
    const/4 v0, 0x0

    goto :goto_0

    .line 22
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/dcl;

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dcl;->a:Lcom/google/android/gms/internal/ads/dfe;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/dcl;->a:Lcom/google/android/gms/internal/ads/dfe;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dfe;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final f()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 66
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dcl;->a:Lcom/google/android/gms/internal/ads/dfe;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/dfe;->c()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 67
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dcl;->a:Lcom/google/android/gms/internal/ads/dfe;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/dfe;->b(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/dcl;->a(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 74
    :goto_1
    return v1

    .line 69
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dcl;->a:Lcom/google/android/gms/internal/ads/dfe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dfe;->d()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 71
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dcl;->a(Ljava/util/Map$Entry;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 74
    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public final g()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 194
    move v0, v1

    move v2, v1

    .line 195
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dcl;->a:Lcom/google/android/gms/internal/ads/dfe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dfe;->c()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dcl;->a:Lcom/google/android/gms/internal/ads/dfe;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/dfe;->b(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/dcl;->c(Ljava/util/Map$Entry;)I

    move-result v1

    add-int/2addr v1, v2

    .line 197
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_0

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dcl;->a:Lcom/google/android/gms/internal/ads/dfe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dfe;->d()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 199
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dcl;->c(Ljava/util/Map$Entry;)I

    move-result v0

    add-int/2addr v2, v0

    .line 200
    goto :goto_1

    .line 201
    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dcl;->a:Lcom/google/android/gms/internal/ads/dfe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dfe;->hashCode()I

    move-result v0

    return v0
.end method
