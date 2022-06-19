.class public final Lokhttp3/w;
.super Lokhttp3/ab;
.source "MultipartBody.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/w$a;,
        Lokhttp3/w$b;
    }
.end annotation


# static fields
.field public static final a:Lokhttp3/v;

.field public static final b:Lokhttp3/v;

.field public static final c:Lokhttp3/v;

.field public static final d:Lokhttp3/v;

.field public static final e:Lokhttp3/v;

.field private static final f:[B

.field private static final g:[B

.field private static final h:[B


# instance fields
.field private final i:La/f;

.field private final j:Lokhttp3/v;

.field private final k:Lokhttp3/v;

.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/w$b;",
            ">;"
        }
    .end annotation
.end field

.field private m:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 35
    const-string/jumbo v0, "multipart/mixed"

    invoke-static {v0}, Lokhttp3/v;->a(Ljava/lang/String;)Lokhttp3/v;

    move-result-object v0

    sput-object v0, Lokhttp3/w;->a:Lokhttp3/v;

    .line 42
    const-string/jumbo v0, "multipart/alternative"

    invoke-static {v0}, Lokhttp3/v;->a(Ljava/lang/String;)Lokhttp3/v;

    move-result-object v0

    sput-object v0, Lokhttp3/w;->b:Lokhttp3/v;

    .line 49
    const-string/jumbo v0, "multipart/digest"

    invoke-static {v0}, Lokhttp3/v;->a(Ljava/lang/String;)Lokhttp3/v;

    move-result-object v0

    sput-object v0, Lokhttp3/w;->c:Lokhttp3/v;

    .line 55
    const-string/jumbo v0, "multipart/parallel"

    invoke-static {v0}, Lokhttp3/v;->a(Ljava/lang/String;)Lokhttp3/v;

    move-result-object v0

    sput-object v0, Lokhttp3/w;->d:Lokhttp3/v;

    .line 62
    const-string/jumbo v0, "multipart/form-data"

    invoke-static {v0}, Lokhttp3/v;->a(Ljava/lang/String;)Lokhttp3/v;

    move-result-object v0

    sput-object v0, Lokhttp3/w;->e:Lokhttp3/v;

    .line 64
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lokhttp3/w;->f:[B

    .line 65
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lokhttp3/w;->g:[B

    .line 66
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lokhttp3/w;->h:[B

    return-void

    .line 64
    :array_0
    .array-data 1
        0x3at
        0x20t
    .end array-data

    .line 65
    nop

    :array_1
    .array-data 1
        0xdt
        0xat
    .end array-data

    .line 66
    nop

    :array_2
    .array-data 1
        0x2dt
        0x2dt
    .end array-data
.end method

.method constructor <init>(La/f;Lokhttp3/v;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/f;",
            "Lokhttp3/v;",
            "Ljava/util/List",
            "<",
            "Lokhttp3/w$b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0}, Lokhttp3/ab;-><init>()V

    .line 72
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lokhttp3/w;->m:J

    .line 75
    iput-object p1, p0, Lokhttp3/w;->i:La/f;

    .line 76
    iput-object p2, p0, Lokhttp3/w;->j:Lokhttp3/v;

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; boundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, La/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/v;->a(Ljava/lang/String;)Lokhttp3/v;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/w;->k:Lokhttp3/v;

    .line 78
    invoke-static {p3}, Lokhttp3/internal/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/w;->l:Ljava/util/List;

    .line 79
    return-void
.end method

.method private a(La/d;Z)J
    .locals 12
    .param p1    # La/d;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 125
    const-wide/16 v2, 0x0

    .line 127
    const/4 v0, 0x0

    .line 128
    if-eqz p2, :cond_7

    .line 129
    new-instance v0, La/c;

    invoke-direct {v0}, La/c;-><init>()V

    move-object v1, v0

    move-object p1, v0

    .line 132
    :goto_0
    const/4 v0, 0x0

    iget-object v4, p0, Lokhttp3/w;->l:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v4, v0

    :goto_1
    if-ge v4, v5, :cond_6

    .line 133
    iget-object v0, p0, Lokhttp3/w;->l:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/w$b;

    .line 134
    iget-object v6, v0, Lokhttp3/w$b;->a:Lokhttp3/s;

    .line 135
    iget-object v7, v0, Lokhttp3/w$b;->b:Lokhttp3/ab;

    .line 137
    sget-object v0, Lokhttp3/w;->h:[B

    invoke-interface {p1, v0}, La/d;->c([B)La/d;

    .line 138
    iget-object v0, p0, Lokhttp3/w;->i:La/f;

    invoke-interface {p1, v0}, La/d;->b(La/f;)La/d;

    .line 139
    sget-object v0, Lokhttp3/w;->g:[B

    invoke-interface {p1, v0}, La/d;->c([B)La/d;

    .line 141
    if-eqz v6, :cond_0

    .line 142
    const/4 v0, 0x0

    invoke-virtual {v6}, Lokhttp3/s;->a()I

    move-result v8

    :goto_2
    if-ge v0, v8, :cond_0

    .line 143
    invoke-virtual {v6, v0}, Lokhttp3/s;->a(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v9}, La/d;->b(Ljava/lang/String;)La/d;

    move-result-object v9

    sget-object v10, Lokhttp3/w;->f:[B

    .line 144
    invoke-interface {v9, v10}, La/d;->c([B)La/d;

    move-result-object v9

    .line 145
    invoke-virtual {v6, v0}, Lokhttp3/s;->b(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, La/d;->b(Ljava/lang/String;)La/d;

    move-result-object v9

    sget-object v10, Lokhttp3/w;->g:[B

    .line 146
    invoke-interface {v9, v10}, La/d;->c([B)La/d;

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 150
    :cond_0
    invoke-virtual {v7}, Lokhttp3/ab;->a()Lokhttp3/v;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_1

    .line 152
    const-string/jumbo v6, "Content-Type: "

    invoke-interface {p1, v6}, La/d;->b(Ljava/lang/String;)La/d;

    move-result-object v6

    .line 153
    invoke-virtual {v0}, Lokhttp3/v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, La/d;->b(Ljava/lang/String;)La/d;

    move-result-object v0

    sget-object v6, Lokhttp3/w;->g:[B

    .line 154
    invoke-interface {v0, v6}, La/d;->c([B)La/d;

    .line 157
    :cond_1
    invoke-virtual {v7}, Lokhttp3/ab;->b()J

    move-result-wide v8

    .line 158
    const-wide/16 v10, -0x1

    cmp-long v0, v8, v10

    if-eqz v0, :cond_3

    .line 159
    const-string/jumbo v0, "Content-Length: "

    invoke-interface {p1, v0}, La/d;->b(Ljava/lang/String;)La/d;

    move-result-object v0

    .line 160
    invoke-interface {v0, v8, v9}, La/d;->l(J)La/d;

    move-result-object v0

    sget-object v6, Lokhttp3/w;->g:[B

    .line 161
    invoke-interface {v0, v6}, La/d;->c([B)La/d;

    .line 168
    :cond_2
    sget-object v0, Lokhttp3/w;->g:[B

    invoke-interface {p1, v0}, La/d;->c([B)La/d;

    .line 170
    if-eqz p2, :cond_5

    .line 171
    add-long/2addr v2, v8

    .line 176
    :goto_3
    sget-object v0, Lokhttp3/w;->g:[B

    invoke-interface {p1, v0}, La/d;->c([B)La/d;

    .line 132
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_1

    .line 162
    :cond_3
    if-eqz p2, :cond_2

    .line 164
    invoke-virtual {v1}, La/c;->q()V

    .line 165
    const-wide/16 v2, -0x1

    .line 189
    :cond_4
    :goto_4
    return-wide v2

    .line 173
    :cond_5
    invoke-virtual {v7, p1}, Lokhttp3/ab;->a(La/d;)V

    goto :goto_3

    .line 179
    :cond_6
    sget-object v0, Lokhttp3/w;->h:[B

    invoke-interface {p1, v0}, La/d;->c([B)La/d;

    .line 180
    iget-object v0, p0, Lokhttp3/w;->i:La/f;

    invoke-interface {p1, v0}, La/d;->b(La/f;)La/d;

    .line 181
    sget-object v0, Lokhttp3/w;->h:[B

    invoke-interface {p1, v0}, La/d;->c([B)La/d;

    .line 182
    sget-object v0, Lokhttp3/w;->g:[B

    invoke-interface {p1, v0}, La/d;->c([B)La/d;

    .line 184
    if-eqz p2, :cond_4

    .line 185
    invoke-virtual {v1}, La/c;->b()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 186
    invoke-virtual {v1}, La/c;->q()V

    goto :goto_4

    :cond_7
    move-object v1, v0

    goto/16 :goto_0
.end method


# virtual methods
.method public a()Lokhttp3/v;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lokhttp3/w;->k:Lokhttp3/v;

    return-object v0
.end method

.method public a(La/d;)V
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lokhttp3/w;->a(La/d;Z)J

    .line 115
    return-void
.end method

.method public b()J
    .locals 4

    .prologue
    .line 108
    iget-wide v0, p0, Lokhttp3/w;->m:J

    .line 109
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 110
    :goto_0
    return-wide v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lokhttp3/w;->a(La/d;Z)J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/w;->m:J

    goto :goto_0
.end method
