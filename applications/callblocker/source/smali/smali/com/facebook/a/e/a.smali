.class public final Lcom/facebook/a/e/a;
.super Ljava/lang/Object;
.source "Model.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/a/e/a$b;,
        Lcom/facebook/a/e/a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final w:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/io/File;

.field private d:Ljava/io/File;

.field private e:Ljava/io/File;

.field private f:I

.field private g:[F

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lcom/facebook/a/e/a$b;

.field private k:Lcom/facebook/a/e/a$b;

.field private l:Lcom/facebook/a/e/a$b;

.field private m:Lcom/facebook/a/e/a$b;

.field private n:Lcom/facebook/a/e/a$b;

.field private o:Lcom/facebook/a/e/a$b;

.field private p:Lcom/facebook/a/e/a$b;

.field private q:Lcom/facebook/a/e/a$b;

.field private r:Lcom/facebook/a/e/a$b;

.field private s:Lcom/facebook/a/e/a$b;

.field private t:Lcom/facebook/a/e/a$b;

.field private u:Lcom/facebook/a/e/a$b;

.field private v:Lcom/facebook/a/e/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "fb_mobile_add_to_cart"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "fb_mobile_complete_registration"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "other"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "fb_mobile_purchase"

    aput-object v2, v0, v1

    .line 56
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/facebook/a/e/a;->a:Ljava/util/List;

    .line 88
    new-instance v0, Lcom/facebook/a/e/a$1;

    invoke-direct {v0}, Lcom/facebook/a/e/a$1;-><init>()V

    sput-object v0, Lcom/facebook/a/e/a;->w:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[F)V
    .locals 4

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/facebook/a/e/a;->b:Ljava/lang/String;

    .line 101
    iput p2, p0, Lcom/facebook/a/e/a;->f:I

    .line 102
    iput-object p5, p0, Lcom/facebook/a/e/a;->g:[F

    .line 103
    iput-object p3, p0, Lcom/facebook/a/e/a;->h:Ljava/lang/String;

    .line 104
    iput-object p4, p0, Lcom/facebook/a/e/a;->i:Ljava/lang/String;

    .line 106
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/facebook/j;->h()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "facebook_ml/"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/a/e/a;->e:Ljava/io/File;

    .line 107
    iget-object v0, p0, Lcom/facebook/a/e/a;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/facebook/a/e/a;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 110
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/a/e/a;->e:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/a/e/a;->c:Ljava/io/File;

    .line 111
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/a/e/a;->e:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_rule"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/a/e/a;->d:Ljava/io/File;

    .line 112
    return-void
.end method

.method static synthetic a(Lcom/facebook/a/e/a;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/facebook/a/e/a;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/a/e/a;)Z
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/facebook/a/e/a;->c()Z

    move-result v0

    return v0
.end method

.method private b()V
    .locals 7

    .prologue
    .line 128
    iget-object v0, p0, Lcom/facebook/a/e/a;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 129
    if-eqz v1, :cond_0

    array-length v0, v1

    if-nez v0, :cond_1

    .line 139
    :cond_0
    return-void

    .line 132
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/facebook/a/e/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/facebook/a/e/a;->f:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 133
    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v1, v0

    .line 134
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 135
    iget-object v6, p0, Lcom/facebook/a/e/a;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 136
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 133
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private b(Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/facebook/a/e/a;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/facebook/a/e/a;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 153
    new-instance v0, Lcom/facebook/a/e/a$a;

    iget-object v1, p0, Lcom/facebook/a/e/a;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/a/e/a;->c:Ljava/io/File;

    invoke-direct {v0, v1, v2, p1}, Lcom/facebook/a/e/a$a;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/a/e/a$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private c(Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 159
    iget-object v0, p0, Lcom/facebook/a/e/a;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/a/e/a;->i:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 160
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 164
    :goto_0
    return-void

    .line 163
    :cond_1
    new-instance v0, Lcom/facebook/a/e/a$a;

    iget-object v1, p0, Lcom/facebook/a/e/a;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/a/e/a;->d:Ljava/io/File;

    invoke-direct {v0, v1, v2, p1}, Lcom/facebook/a/e/a$a;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/a/e/a$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private c()Z
    .locals 14

    .prologue
    .line 170
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/facebook/a/e/a;->c:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 171
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v5

    .line 172
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 173
    new-array v6, v5, [B

    .line 174
    invoke-virtual {v1, v6}, Ljava/io/DataInputStream;->readFully([B)V

    .line 175
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 177
    const/4 v0, 0x4

    if-ge v5, v0, :cond_0

    .line 178
    const/4 v0, 0x0

    .line 255
    :goto_0
    return v0

    .line 181
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {v6, v0, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 182
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 183
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 185
    add-int/lit8 v0, v1, 0x4

    if-ge v5, v0, :cond_1

    .line 186
    const/4 v0, 0x0

    goto :goto_0

    .line 189
    :cond_1
    new-instance v0, Ljava/lang/String;

    const/4 v2, 0x4

    invoke-direct {v0, v6, v2, v1}, Ljava/lang/String;-><init>([BII)V

    .line 190
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v7}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v2

    .line 193
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v8, v0, [Ljava/lang/String;

    .line 194
    const/4 v0, 0x0

    :goto_1
    array-length v3, v8

    if-ge v0, v3, :cond_2

    .line 195
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v0

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 197
    :cond_2
    invoke-static {v8}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 199
    add-int/lit8 v1, v1, 0x4

    .line 201
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 203
    array-length v10, v8

    const/4 v0, 0x0

    move v3, v0

    move v4, v1

    :goto_2
    if-ge v3, v10, :cond_6

    aget-object v0, v8, v3

    .line 204
    const/4 v2, 0x1

    .line 205
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 206
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v12, v1, [I

    .line 207
    const/4 v1, 0x0

    :goto_3
    array-length v13, v12

    if-ge v1, v13, :cond_3

    .line 208
    invoke-virtual {v11, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v13

    aput v13, v12, v1

    .line 209
    aget v13, v12, v1

    mul-int/2addr v2, v13

    .line 207
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 212
    :cond_3
    mul-int/lit8 v1, v2, 0x4

    add-int/2addr v1, v4

    if-le v1, v5, :cond_4

    .line 213
    const/4 v0, 0x0

    goto :goto_0

    .line 216
    :cond_4
    mul-int/lit8 v1, v2, 0x4

    invoke-static {v6, v4, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 217
    sget-object v11, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 218
    new-array v11, v2, [F

    .line 219
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    const/4 v13, 0x0

    invoke-virtual {v1, v11, v13, v2}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    .line 221
    sget-object v1, Lcom/facebook/a/e/a;->w:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 222
    sget-object v1, Lcom/facebook/a/e/a;->w:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 224
    :cond_5
    new-instance v1, Lcom/facebook/a/e/a$b;

    invoke-direct {v1, v12, v11}, Lcom/facebook/a/e/a$b;-><init>([I[F)V

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    mul-int/lit8 v0, v2, 0x4

    add-int v1, v4, v0

    .line 203
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v4, v1

    goto :goto_2

    .line 228
    :cond_6
    const-string/jumbo v0, "embed.weight"

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/a/e/a$b;

    iput-object v0, p0, Lcom/facebook/a/e/a;->j:Lcom/facebook/a/e/a$b;

    .line 229
    const-string/jumbo v0, "convs.0.weight"

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/a/e/a$b;

    iput-object v0, p0, Lcom/facebook/a/e/a;->k:Lcom/facebook/a/e/a$b;

    .line 230
    const-string/jumbo v0, "convs.1.weight"

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/a/e/a$b;

    iput-object v0, p0, Lcom/facebook/a/e/a;->l:Lcom/facebook/a/e/a$b;

    .line 231
    const-string/jumbo v0, "convs.2.weight"

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/a/e/a$b;

    iput-object v0, p0, Lcom/facebook/a/e/a;->m:Lcom/facebook/a/e/a$b;

    .line 232
    iget-object v0, p0, Lcom/facebook/a/e/a;->k:Lcom/facebook/a/e/a$b;

    iget-object v1, p0, Lcom/facebook/a/e/a;->k:Lcom/facebook/a/e/a$b;

    iget-object v1, v1, Lcom/facebook/a/e/a$b;->b:[F

    iget-object v2, p0, Lcom/facebook/a/e/a;->k:Lcom/facebook/a/e/a$b;

    iget-object v2, v2, Lcom/facebook/a/e/a$b;->a:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p0, Lcom/facebook/a/e/a;->k:Lcom/facebook/a/e/a$b;

    iget-object v3, v3, Lcom/facebook/a/e/a$b;->a:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    iget-object v4, p0, Lcom/facebook/a/e/a;->k:Lcom/facebook/a/e/a$b;

    iget-object v4, v4, Lcom/facebook/a/e/a$b;->a:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/facebook/a/e/c;->a([FIII)[F

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/a/e/a$b;->b:[F

    .line 234
    iget-object v0, p0, Lcom/facebook/a/e/a;->l:Lcom/facebook/a/e/a$b;

    iget-object v1, p0, Lcom/facebook/a/e/a;->l:Lcom/facebook/a/e/a$b;

    iget-object v1, v1, Lcom/facebook/a/e/a$b;->b:[F

    iget-object v2, p0, Lcom/facebook/a/e/a;->l:Lcom/facebook/a/e/a$b;

    iget-object v2, v2, Lcom/facebook/a/e/a$b;->a:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p0, Lcom/facebook/a/e/a;->l:Lcom/facebook/a/e/a$b;

    iget-object v3, v3, Lcom/facebook/a/e/a$b;->a:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    iget-object v4, p0, Lcom/facebook/a/e/a;->l:Lcom/facebook/a/e/a$b;

    iget-object v4, v4, Lcom/facebook/a/e/a$b;->a:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/facebook/a/e/c;->a([FIII)[F

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/a/e/a$b;->b:[F

    .line 236
    iget-object v0, p0, Lcom/facebook/a/e/a;->m:Lcom/facebook/a/e/a$b;

    iget-object v1, p0, Lcom/facebook/a/e/a;->m:Lcom/facebook/a/e/a$b;

    iget-object v1, v1, Lcom/facebook/a/e/a$b;->b:[F

    iget-object v2, p0, Lcom/facebook/a/e/a;->m:Lcom/facebook/a/e/a$b;

    iget-object v2, v2, Lcom/facebook/a/e/a$b;->a:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p0, Lcom/facebook/a/e/a;->m:Lcom/facebook/a/e/a$b;

    iget-object v3, v3, Lcom/facebook/a/e/a$b;->a:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    iget-object v4, p0, Lcom/facebook/a/e/a;->m:Lcom/facebook/a/e/a$b;

    iget-object v4, v4, Lcom/facebook/a/e/a$b;->a:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/facebook/a/e/c;->a([FIII)[F

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/a/e/a$b;->b:[F

    .line 238
    const-string/jumbo v0, "convs.0.bias"

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/a/e/a$b;

    iput-object v0, p0, Lcom/facebook/a/e/a;->n:Lcom/facebook/a/e/a$b;

    .line 239
    const-string/jumbo v0, "convs.1.bias"

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/a/e/a$b;

    iput-object v0, p0, Lcom/facebook/a/e/a;->o:Lcom/facebook/a/e/a$b;

    .line 240
    const-string/jumbo v0, "convs.2.bias"

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/a/e/a$b;

    iput-object v0, p0, Lcom/facebook/a/e/a;->p:Lcom/facebook/a/e/a$b;

    .line 241
    const-string/jumbo v0, "fc1.weight"

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/a/e/a$b;

    iput-object v0, p0, Lcom/facebook/a/e/a;->q:Lcom/facebook/a/e/a$b;

    .line 242
    const-string/jumbo v0, "fc2.weight"

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/a/e/a$b;

    iput-object v0, p0, Lcom/facebook/a/e/a;->r:Lcom/facebook/a/e/a$b;

    .line 243
    const-string/jumbo v0, "fc3.weight"

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/a/e/a$b;

    iput-object v0, p0, Lcom/facebook/a/e/a;->s:Lcom/facebook/a/e/a$b;

    .line 244
    iget-object v0, p0, Lcom/facebook/a/e/a;->q:Lcom/facebook/a/e/a$b;

    iget-object v1, p0, Lcom/facebook/a/e/a;->q:Lcom/facebook/a/e/a$b;

    iget-object v1, v1, Lcom/facebook/a/e/a$b;->b:[F

    iget-object v2, p0, Lcom/facebook/a/e/a;->q:Lcom/facebook/a/e/a$b;

    iget-object v2, v2, Lcom/facebook/a/e/a$b;->a:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p0, Lcom/facebook/a/e/a;->q:Lcom/facebook/a/e/a$b;

    iget-object v3, v3, Lcom/facebook/a/e/a$b;->a:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/facebook/a/e/c;->a([FII)[F

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/a/e/a$b;->b:[F

    .line 246
    iget-object v0, p0, Lcom/facebook/a/e/a;->r:Lcom/facebook/a/e/a$b;

    iget-object v1, p0, Lcom/facebook/a/e/a;->r:Lcom/facebook/a/e/a$b;

    iget-object v1, v1, Lcom/facebook/a/e/a$b;->b:[F

    iget-object v2, p0, Lcom/facebook/a/e/a;->r:Lcom/facebook/a/e/a$b;

    iget-object v2, v2, Lcom/facebook/a/e/a$b;->a:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p0, Lcom/facebook/a/e/a;->r:Lcom/facebook/a/e/a$b;

    iget-object v3, v3, Lcom/facebook/a/e/a$b;->a:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/facebook/a/e/c;->a([FII)[F

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/a/e/a$b;->b:[F

    .line 248
    iget-object v0, p0, Lcom/facebook/a/e/a;->s:Lcom/facebook/a/e/a$b;

    iget-object v1, p0, Lcom/facebook/a/e/a;->s:Lcom/facebook/a/e/a$b;

    iget-object v1, v1, Lcom/facebook/a/e/a$b;->b:[F

    iget-object v2, p0, Lcom/facebook/a/e/a;->s:Lcom/facebook/a/e/a$b;

    iget-object v2, v2, Lcom/facebook/a/e/a$b;->a:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p0, Lcom/facebook/a/e/a;->s:Lcom/facebook/a/e/a$b;

    iget-object v3, v3, Lcom/facebook/a/e/a$b;->a:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/facebook/a/e/c;->a([FII)[F

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/a/e/a$b;->b:[F

    .line 250
    const-string/jumbo v0, "fc1.bias"

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/a/e/a$b;

    iput-object v0, p0, Lcom/facebook/a/e/a;->t:Lcom/facebook/a/e/a$b;

    .line 251
    const-string/jumbo v0, "fc2.bias"

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/a/e/a$b;

    iput-object v0, p0, Lcom/facebook/a/e/a;->u:Lcom/facebook/a/e/a$b;

    .line 252
    const-string/jumbo v0, "fc3.bias"

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/a/e/a$b;

    iput-object v0, p0, Lcom/facebook/a/e/a;->v:Lcom/facebook/a/e/a$b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    const/4 v0, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method a()Ljava/io/File;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/facebook/a/e/a;->d:Ljava/io/File;

    return-object v0
.end method

.method a([F)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 308
    array-length v1, p1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/a/e/a;->g:[F

    array-length v1, v1

    if-nez v1, :cond_1

    .line 316
    :cond_0
    :goto_0
    return-object v0

    .line 311
    :cond_1
    iget-object v1, p0, Lcom/facebook/a/e/a;->b:Ljava/lang/String;

    const-string/jumbo v2, "SUGGEST_EVENT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 312
    invoke-virtual {p0, p1}, Lcom/facebook/a/e/a;->b([F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 313
    :cond_2
    iget-object v1, p0, Lcom/facebook/a/e/a;->b:Ljava/lang/String;

    const-string/jumbo v2, "DATA_DETECTION_ADDRESS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    invoke-virtual {p0, p1}, Lcom/facebook/a/e/a;->c([F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method a([FLjava/lang/String;)Ljava/lang/String;
    .locals 11

    .prologue
    const/16 v4, 0x40

    const/16 v3, 0x80

    const/4 v2, 0x1

    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 261
    invoke-static {p2, v3}, Lcom/facebook/a/e/d;->a(Ljava/lang/String;I)[I

    move-result-object v0

    .line 262
    iget-object v1, p0, Lcom/facebook/a/e/a;->j:Lcom/facebook/a/e/a$b;

    iget-object v1, v1, Lcom/facebook/a/e/a$b;->b:[F

    invoke-static {v0, v1, v2, v3, v4}, Lcom/facebook/a/e/c;->a([I[FIII)[F

    move-result-object v0

    .line 263
    iget-object v1, p0, Lcom/facebook/a/e/a;->k:Lcom/facebook/a/e/a$b;

    iget-object v1, v1, Lcom/facebook/a/e/a$b;->b:[F

    iget-object v5, p0, Lcom/facebook/a/e/a;->k:Lcom/facebook/a/e/a$b;

    iget-object v5, v5, Lcom/facebook/a/e/a$b;->a:[I

    aget v5, v5, v10

    iget-object v6, p0, Lcom/facebook/a/e/a;->k:Lcom/facebook/a/e/a$b;

    iget-object v6, v6, Lcom/facebook/a/e/a$b;->a:[I

    aget v6, v6, v9

    invoke-static/range {v0 .. v6}, Lcom/facebook/a/e/c;->a([F[FIIIII)[F

    move-result-object v7

    .line 265
    iget-object v1, p0, Lcom/facebook/a/e/a;->l:Lcom/facebook/a/e/a$b;

    iget-object v1, v1, Lcom/facebook/a/e/a$b;->b:[F

    iget-object v5, p0, Lcom/facebook/a/e/a;->l:Lcom/facebook/a/e/a$b;

    iget-object v5, v5, Lcom/facebook/a/e/a$b;->a:[I

    aget v5, v5, v10

    iget-object v6, p0, Lcom/facebook/a/e/a;->l:Lcom/facebook/a/e/a$b;

    iget-object v6, v6, Lcom/facebook/a/e/a$b;->a:[I

    aget v6, v6, v9

    invoke-static/range {v0 .. v6}, Lcom/facebook/a/e/c;->a([F[FIIIII)[F

    move-result-object v8

    .line 267
    iget-object v1, p0, Lcom/facebook/a/e/a;->m:Lcom/facebook/a/e/a$b;

    iget-object v1, v1, Lcom/facebook/a/e/a$b;->b:[F

    iget-object v5, p0, Lcom/facebook/a/e/a;->m:Lcom/facebook/a/e/a$b;

    iget-object v5, v5, Lcom/facebook/a/e/a$b;->a:[I

    aget v5, v5, v10

    iget-object v6, p0, Lcom/facebook/a/e/a;->m:Lcom/facebook/a/e/a$b;

    iget-object v6, v6, Lcom/facebook/a/e/a$b;->a:[I

    aget v6, v6, v9

    invoke-static/range {v0 .. v6}, Lcom/facebook/a/e/c;->a([F[FIIIII)[F

    move-result-object v0

    .line 269
    iget-object v1, p0, Lcom/facebook/a/e/a;->n:Lcom/facebook/a/e/a$b;

    iget-object v1, v1, Lcom/facebook/a/e/a$b;->b:[F

    iget-object v3, p0, Lcom/facebook/a/e/a;->k:Lcom/facebook/a/e/a$b;

    iget-object v3, v3, Lcom/facebook/a/e/a$b;->a:[I

    aget v3, v3, v10

    rsub-int v3, v3, 0x80

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/facebook/a/e/a;->k:Lcom/facebook/a/e/a$b;

    iget-object v4, v4, Lcom/facebook/a/e/a$b;->a:[I

    aget v4, v4, v9

    invoke-static {v7, v1, v2, v3, v4}, Lcom/facebook/a/e/c;->a([F[FIII)[F

    .line 271
    iget-object v1, p0, Lcom/facebook/a/e/a;->o:Lcom/facebook/a/e/a$b;

    iget-object v1, v1, Lcom/facebook/a/e/a$b;->b:[F

    iget-object v3, p0, Lcom/facebook/a/e/a;->l:Lcom/facebook/a/e/a$b;

    iget-object v3, v3, Lcom/facebook/a/e/a$b;->a:[I

    aget v3, v3, v10

    rsub-int v3, v3, 0x80

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/facebook/a/e/a;->l:Lcom/facebook/a/e/a$b;

    iget-object v4, v4, Lcom/facebook/a/e/a$b;->a:[I

    aget v4, v4, v9

    invoke-static {v8, v1, v2, v3, v4}, Lcom/facebook/a/e/c;->a([F[FIII)[F

    .line 273
    iget-object v1, p0, Lcom/facebook/a/e/a;->p:Lcom/facebook/a/e/a$b;

    iget-object v1, v1, Lcom/facebook/a/e/a$b;->b:[F

    iget-object v3, p0, Lcom/facebook/a/e/a;->m:Lcom/facebook/a/e/a$b;

    iget-object v3, v3, Lcom/facebook/a/e/a$b;->a:[I

    aget v3, v3, v10

    rsub-int v3, v3, 0x80

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/facebook/a/e/a;->m:Lcom/facebook/a/e/a$b;

    iget-object v4, v4, Lcom/facebook/a/e/a$b;->a:[I

    aget v4, v4, v9

    invoke-static {v0, v1, v2, v3, v4}, Lcom/facebook/a/e/c;->a([F[FIII)[F

    .line 276
    iget-object v1, p0, Lcom/facebook/a/e/a;->k:Lcom/facebook/a/e/a$b;

    iget-object v1, v1, Lcom/facebook/a/e/a$b;->a:[I

    aget v1, v1, v10

    rsub-int v1, v1, 0x80

    add-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Lcom/facebook/a/e/a;->k:Lcom/facebook/a/e/a$b;

    iget-object v3, v3, Lcom/facebook/a/e/a$b;->a:[I

    aget v3, v3, v9

    mul-int/2addr v1, v3

    invoke-static {v7, v1}, Lcom/facebook/a/e/c;->a([FI)V

    .line 277
    iget-object v1, p0, Lcom/facebook/a/e/a;->l:Lcom/facebook/a/e/a$b;

    iget-object v1, v1, Lcom/facebook/a/e/a$b;->a:[I

    aget v1, v1, v10

    rsub-int v1, v1, 0x80

    add-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Lcom/facebook/a/e/a;->l:Lcom/facebook/a/e/a$b;

    iget-object v3, v3, Lcom/facebook/a/e/a$b;->a:[I

    aget v3, v3, v9

    mul-int/2addr v1, v3

    invoke-static {v8, v1}, Lcom/facebook/a/e/c;->a([FI)V

    .line 278
    iget-object v1, p0, Lcom/facebook/a/e/a;->m:Lcom/facebook/a/e/a$b;

    iget-object v1, v1, Lcom/facebook/a/e/a$b;->a:[I

    aget v1, v1, v10

    rsub-int v1, v1, 0x80

    add-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Lcom/facebook/a/e/a;->m:Lcom/facebook/a/e/a$b;

    iget-object v3, v3, Lcom/facebook/a/e/a$b;->a:[I

    aget v3, v3, v9

    mul-int/2addr v1, v3

    invoke-static {v0, v1}, Lcom/facebook/a/e/c;->a([FI)V

    .line 280
    iget-object v1, p0, Lcom/facebook/a/e/a;->k:Lcom/facebook/a/e/a$b;

    iget-object v1, v1, Lcom/facebook/a/e/a$b;->a:[I

    aget v1, v1, v10

    rsub-int v1, v1, 0x80

    add-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Lcom/facebook/a/e/a;->k:Lcom/facebook/a/e/a$b;

    iget-object v3, v3, Lcom/facebook/a/e/a$b;->a:[I

    aget v3, v3, v9

    iget-object v4, p0, Lcom/facebook/a/e/a;->k:Lcom/facebook/a/e/a$b;

    iget-object v4, v4, Lcom/facebook/a/e/a$b;->a:[I

    aget v4, v4, v10

    rsub-int v4, v4, 0x80

    add-int/lit8 v4, v4, 0x1

    invoke-static {v7, v1, v3, v4}, Lcom/facebook/a/e/c;->b([FIII)[F

    move-result-object v1

    .line 282
    iget-object v3, p0, Lcom/facebook/a/e/a;->l:Lcom/facebook/a/e/a$b;

    iget-object v3, v3, Lcom/facebook/a/e/a$b;->a:[I

    aget v3, v3, v10

    rsub-int v3, v3, 0x80

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/facebook/a/e/a;->l:Lcom/facebook/a/e/a$b;

    iget-object v4, v4, Lcom/facebook/a/e/a$b;->a:[I

    aget v4, v4, v9

    iget-object v5, p0, Lcom/facebook/a/e/a;->l:Lcom/facebook/a/e/a$b;

    iget-object v5, v5, Lcom/facebook/a/e/a$b;->a:[I

    aget v5, v5, v10

    rsub-int v5, v5, 0x80

    add-int/lit8 v5, v5, 0x1

    invoke-static {v8, v3, v4, v5}, Lcom/facebook/a/e/c;->b([FIII)[F

    move-result-object v3

    .line 284
    iget-object v4, p0, Lcom/facebook/a/e/a;->m:Lcom/facebook/a/e/a$b;

    iget-object v4, v4, Lcom/facebook/a/e/a$b;->a:[I

    aget v4, v4, v10

    rsub-int v4, v4, 0x80

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/facebook/a/e/a;->m:Lcom/facebook/a/e/a$b;

    iget-object v5, v5, Lcom/facebook/a/e/a$b;->a:[I

    aget v5, v5, v9

    iget-object v6, p0, Lcom/facebook/a/e/a;->m:Lcom/facebook/a/e/a$b;

    iget-object v6, v6, Lcom/facebook/a/e/a$b;->a:[I

    aget v6, v6, v10

    rsub-int v6, v6, 0x80

    add-int/lit8 v6, v6, 0x1

    invoke-static {v0, v4, v5, v6}, Lcom/facebook/a/e/c;->b([FIII)[F

    move-result-object v0

    .line 287
    invoke-static {v1, v3}, Lcom/facebook/a/e/c;->a([F[F)[F

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/a/e/c;->a([F[F)[F

    move-result-object v0

    invoke-static {v0, p1}, Lcom/facebook/a/e/c;->a([F[F)[F

    move-result-object v3

    .line 290
    iget-object v0, p0, Lcom/facebook/a/e/a;->q:Lcom/facebook/a/e/a$b;

    iget-object v4, v0, Lcom/facebook/a/e/a$b;->b:[F

    iget-object v0, p0, Lcom/facebook/a/e/a;->t:Lcom/facebook/a/e/a$b;

    iget-object v5, v0, Lcom/facebook/a/e/a$b;->b:[F

    iget-object v0, p0, Lcom/facebook/a/e/a;->q:Lcom/facebook/a/e/a$b;

    iget-object v0, v0, Lcom/facebook/a/e/a$b;->a:[I

    aget v7, v0, v2

    iget-object v0, p0, Lcom/facebook/a/e/a;->q:Lcom/facebook/a/e/a$b;

    iget-object v0, v0, Lcom/facebook/a/e/a$b;->a:[I

    aget v8, v0, v9

    move v6, v2

    invoke-static/range {v3 .. v8}, Lcom/facebook/a/e/c;->a([F[F[FIII)[F

    move-result-object v3

    .line 293
    iget-object v0, p0, Lcom/facebook/a/e/a;->t:Lcom/facebook/a/e/a$b;

    iget-object v0, v0, Lcom/facebook/a/e/a$b;->a:[I

    aget v0, v0, v9

    invoke-static {v3, v0}, Lcom/facebook/a/e/c;->a([FI)V

    .line 294
    iget-object v0, p0, Lcom/facebook/a/e/a;->r:Lcom/facebook/a/e/a$b;

    iget-object v4, v0, Lcom/facebook/a/e/a$b;->b:[F

    iget-object v0, p0, Lcom/facebook/a/e/a;->u:Lcom/facebook/a/e/a$b;

    iget-object v5, v0, Lcom/facebook/a/e/a$b;->b:[F

    iget-object v0, p0, Lcom/facebook/a/e/a;->r:Lcom/facebook/a/e/a$b;

    iget-object v0, v0, Lcom/facebook/a/e/a$b;->a:[I

    aget v7, v0, v2

    iget-object v0, p0, Lcom/facebook/a/e/a;->r:Lcom/facebook/a/e/a$b;

    iget-object v0, v0, Lcom/facebook/a/e/a$b;->a:[I

    aget v8, v0, v9

    move v6, v2

    invoke-static/range {v3 .. v8}, Lcom/facebook/a/e/c;->a([F[F[FIII)[F

    move-result-object v3

    .line 297
    iget-object v0, p0, Lcom/facebook/a/e/a;->u:Lcom/facebook/a/e/a$b;

    iget-object v0, v0, Lcom/facebook/a/e/a$b;->a:[I

    aget v0, v0, v9

    invoke-static {v3, v0}, Lcom/facebook/a/e/c;->a([FI)V

    .line 298
    iget-object v0, p0, Lcom/facebook/a/e/a;->s:Lcom/facebook/a/e/a$b;

    iget-object v4, v0, Lcom/facebook/a/e/a$b;->b:[F

    iget-object v0, p0, Lcom/facebook/a/e/a;->v:Lcom/facebook/a/e/a$b;

    iget-object v5, v0, Lcom/facebook/a/e/a$b;->b:[F

    iget-object v0, p0, Lcom/facebook/a/e/a;->s:Lcom/facebook/a/e/a$b;

    iget-object v0, v0, Lcom/facebook/a/e/a$b;->a:[I

    aget v7, v0, v2

    iget-object v0, p0, Lcom/facebook/a/e/a;->s:Lcom/facebook/a/e/a$b;

    iget-object v0, v0, Lcom/facebook/a/e/a$b;->a:[I

    aget v8, v0, v9

    move v6, v2

    invoke-static/range {v3 .. v8}, Lcom/facebook/a/e/c;->a([F[F[FIII)[F

    move-result-object v0

    .line 301
    iget-object v1, p0, Lcom/facebook/a/e/a;->v:Lcom/facebook/a/e/a$b;

    iget-object v1, v1, Lcom/facebook/a/e/a$b;->a:[I

    aget v1, v1, v9

    invoke-static {v0, v1}, Lcom/facebook/a/e/c;->b([FI)V

    .line 303
    invoke-virtual {p0, v0}, Lcom/facebook/a/e/a;->a([F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 116
    new-instance v0, Lcom/facebook/a/e/a$2;

    invoke-direct {v0, p0, p1}, Lcom/facebook/a/e/a$2;-><init>(Lcom/facebook/a/e/a;Ljava/lang/Runnable;)V

    invoke-direct {p0, v0}, Lcom/facebook/a/e/a;->b(Ljava/lang/Runnable;)V

    .line 124
    invoke-direct {p0}, Lcom/facebook/a/e/a;->b()V

    .line 125
    return-void
.end method

.method b([F)Ljava/lang/String;
    .locals 3

    .prologue
    .line 321
    iget-object v0, p0, Lcom/facebook/a/e/a;->g:[F

    array-length v0, v0

    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 322
    const/4 v0, 0x0

    .line 329
    :goto_0
    return-object v0

    .line 324
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/facebook/a/e/a;->g:[F

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 325
    aget v1, p1, v0

    iget-object v2, p0, Lcom/facebook/a/e/a;->g:[F

    aget v2, v2, v0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    .line 326
    sget-object v1, Lcom/facebook/a/e/a;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 324
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 329
    :cond_2
    const-string/jumbo v0, "other"

    goto :goto_0
.end method

.method c([F)Ljava/lang/String;
    .locals 3

    .prologue
    .line 334
    const/4 v0, 0x1

    aget v0, p1, v0

    iget-object v1, p0, Lcom/facebook/a/e/a;->g:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const-string/jumbo v0, "SHOULD_FILTER"

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
