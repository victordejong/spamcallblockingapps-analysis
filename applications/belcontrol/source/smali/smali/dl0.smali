.class public final Ldl0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldl0$d;,
        Ldl0$c;
    }
.end annotation


# static fields
.field public static final v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final w:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/io/File;

.field public c:Ljava/io/File;

.field public d:Ljava/io/File;

.field public e:I

.field public f:[F

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ldl0$d;

.field public j:Ldl0$d;

.field public k:Ldl0$d;

.field public l:Ldl0$d;

.field public m:Ldl0$d;

.field public n:Ldl0$d;

.field public o:Ldl0$d;

.field public p:Ldl0$d;

.field public q:Ldl0$d;

.field public r:Ldl0$d;

.field public s:Ldl0$d;

.field public t:Ldl0$d;

.field public u:Ldl0$d;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "fb_mobile_add_to_cart"

    const-string v1, "fb_mobile_complete_registration"

    const-string v2, "other"

    const-string v3, "fb_mobile_purchase"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ldl0;->v:Ljava/util/List;

    new-instance v0, Ldl0$a;

    invoke-direct {v0}, Ldl0$a;-><init>()V

    sput-object v0, Ldl0;->w:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[F)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldl0;->a:Ljava/lang/String;

    iput p2, p0, Ldl0;->e:I

    iput-object p5, p0, Ldl0;->f:[F

    iput-object p3, p0, Ldl0;->g:Ljava/lang/String;

    iput-object p4, p0, Ldl0;->h:Ljava/lang/String;

    new-instance p3, Ljava/io/File;

    invoke-static {}, Lui0;->e()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p4

    const-string p5, "facebook_ml/"

    invoke-direct {p3, p4, p5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p3, p0, Ldl0;->d:Ljava/io/File;

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p3, p0, Ldl0;->d:Ljava/io/File;

    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance p3, Ljava/io/File;

    iget-object p4, p0, Ldl0;->d:Ljava/io/File;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-direct {p3, p4, p5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p3, p0, Ldl0;->b:Ljava/io/File;

    new-instance p3, Ljava/io/File;

    iget-object p4, p0, Ldl0;->d:Ljava/io/File;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "_rule"

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p4, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p3, p0, Ldl0;->c:Ljava/io/File;

    return-void
.end method

.method public static synthetic a(Ldl0;)Z
    .locals 0

    invoke-virtual {p0}, Ldl0;->h()Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Ldl0;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p1}, Ldl0;->e(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 7

    iget-object v0, p0, Ldl0;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ldl0;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ldl0;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Ldl0;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final d(Ljava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Ldl0;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    iget-object v0, p0, Ldl0;->g:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ldl0$c;

    iget-object v1, p0, Ldl0;->g:Ljava/lang/String;

    iget-object v2, p0, Ldl0;->b:Ljava/io/File;

    invoke-direct {v0, v1, v2, p1}, Ldl0$c;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method public final e(Ljava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Ldl0;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ldl0;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ldl0$c;

    iget-object v1, p0, Ldl0;->h:Ljava/lang/String;

    iget-object v2, p0, Ldl0;->c:Ljava/io/File;

    invoke-direct {v0, v1, v2, p1}, Ldl0$c;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public f()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Ldl0;->c:Ljava/io/File;

    return-object v0
.end method

.method public g(Ljava/lang/Runnable;)V
    .locals 1

    new-instance v0, Ldl0$b;

    invoke-direct {v0, p0, p1}, Ldl0$b;-><init>(Ldl0;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Ldl0;->d(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Ldl0;->c()V

    return-void
.end method

.method public final h()Z
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, v0, Ldl0;->b:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v3

    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-array v2, v3, [B

    invoke-virtual {v4, v2}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V

    const/4 v4, 0x4

    if-ge v3, v4, :cond_0

    return v1

    :cond_0
    invoke-static {v2, v1, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v5

    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    add-int/lit8 v6, v5, 0x4

    if-ge v3, v6, :cond_1

    return v1

    :cond_1
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v2, v4, v5}, Ljava/lang/String;-><init>([BII)V

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    new-array v8, v7, [Ljava/lang/String;

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v7, :cond_2

    invoke-virtual {v5, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v8}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const/4 v9, 0x0

    :goto_1
    const/4 v10, 0x1

    if-ge v9, v7, :cond_6

    aget-object v11, v8, v9

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v13

    new-array v14, v13, [I

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v13, :cond_3

    invoke-virtual {v12, v15}, Lorg/json/JSONArray;->getInt(I)I

    move-result v16

    aput v16, v14, v15

    aget v16, v14, v15

    mul-int v10, v10, v16

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_3
    mul-int/lit8 v12, v10, 0x4

    add-int v13, v6, v12

    if-le v13, v3, :cond_4

    return v1

    :cond_4
    invoke-static {v2, v6, v12}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v6

    sget-object v12, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v12}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    new-array v12, v10, [F

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    invoke-virtual {v6, v12, v1, v10}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    sget-object v6, Ldl0;->w:Ljava/util/Map;

    invoke-interface {v6, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v11, v6

    check-cast v11, Ljava/lang/String;

    :cond_5
    new-instance v6, Ldl0$d;

    invoke-direct {v6, v14, v12}, Ldl0$d;-><init>([I[F)V

    invoke-interface {v5, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    move v6, v13

    goto :goto_1

    :cond_6
    const-string v2, "embed.weight"

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldl0$d;

    iput-object v2, v0, Ldl0;->i:Ldl0$d;

    const-string v2, "convs.0.weight"

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldl0$d;

    iput-object v2, v0, Ldl0;->j:Ldl0$d;

    const-string v2, "convs.1.weight"

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldl0$d;

    iput-object v2, v0, Ldl0;->k:Ldl0$d;

    const-string v2, "convs.2.weight"

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldl0$d;

    iput-object v2, v0, Ldl0;->l:Ldl0$d;

    iget-object v2, v0, Ldl0;->j:Ldl0$d;

    iget-object v3, v2, Ldl0$d;->b:[F

    iget-object v4, v2, Ldl0$d;->a:[I

    aget v6, v4, v1

    aget v7, v4, v10

    const/4 v8, 0x2

    aget v4, v4, v8

    invoke-static {v3, v6, v7, v4}, Lfl0;->k([FIII)[F

    move-result-object v3

    iput-object v3, v2, Ldl0$d;->b:[F

    iget-object v2, v0, Ldl0;->k:Ldl0$d;

    iget-object v3, v2, Ldl0$d;->b:[F

    iget-object v4, v2, Ldl0$d;->a:[I

    aget v6, v4, v1

    aget v7, v4, v10

    aget v4, v4, v8

    invoke-static {v3, v6, v7, v4}, Lfl0;->k([FIII)[F

    move-result-object v3

    iput-object v3, v2, Ldl0$d;->b:[F

    iget-object v2, v0, Ldl0;->l:Ldl0$d;

    iget-object v3, v2, Ldl0$d;->b:[F

    iget-object v4, v2, Ldl0$d;->a:[I

    aget v6, v4, v1

    aget v7, v4, v10

    aget v4, v4, v8

    invoke-static {v3, v6, v7, v4}, Lfl0;->k([FIII)[F

    move-result-object v3

    iput-object v3, v2, Ldl0$d;->b:[F

    const-string v2, "convs.0.bias"

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldl0$d;

    iput-object v2, v0, Ldl0;->m:Ldl0$d;

    const-string v2, "convs.1.bias"

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldl0$d;

    iput-object v2, v0, Ldl0;->n:Ldl0$d;

    const-string v2, "convs.2.bias"

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldl0$d;

    iput-object v2, v0, Ldl0;->o:Ldl0$d;

    const-string v2, "fc1.weight"

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldl0$d;

    iput-object v2, v0, Ldl0;->p:Ldl0$d;

    const-string v2, "fc2.weight"

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldl0$d;

    iput-object v2, v0, Ldl0;->q:Ldl0$d;

    const-string v2, "fc3.weight"

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldl0$d;

    iput-object v2, v0, Ldl0;->r:Ldl0$d;

    iget-object v2, v0, Ldl0;->p:Ldl0$d;

    iget-object v3, v2, Ldl0$d;->b:[F

    iget-object v4, v2, Ldl0$d;->a:[I

    aget v6, v4, v1

    aget v4, v4, v10

    invoke-static {v3, v6, v4}, Lfl0;->j([FII)[F

    move-result-object v3

    iput-object v3, v2, Ldl0$d;->b:[F

    iget-object v2, v0, Ldl0;->q:Ldl0$d;

    iget-object v3, v2, Ldl0$d;->b:[F

    iget-object v4, v2, Ldl0$d;->a:[I

    aget v6, v4, v1

    aget v4, v4, v10

    invoke-static {v3, v6, v4}, Lfl0;->j([FII)[F

    move-result-object v3

    iput-object v3, v2, Ldl0$d;->b:[F

    iget-object v2, v0, Ldl0;->r:Ldl0$d;

    iget-object v3, v2, Ldl0$d;->b:[F

    iget-object v4, v2, Ldl0$d;->a:[I

    aget v6, v4, v1

    aget v4, v4, v10

    invoke-static {v3, v6, v4}, Lfl0;->j([FII)[F

    move-result-object v3

    iput-object v3, v2, Ldl0$d;->b:[F

    const-string v2, "fc1.bias"

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldl0$d;

    iput-object v2, v0, Ldl0;->s:Ldl0$d;

    const-string v2, "fc2.bias"

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldl0$d;

    iput-object v2, v0, Ldl0;->t:Ldl0$d;

    const-string v2, "fc3.bias"

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldl0$d;

    iput-object v2, v0, Ldl0;->u:Ldl0$d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v10

    :catch_0
    return v1
.end method

.method public i([FLjava/lang/String;)Ljava/lang/String;
    .locals 20

    move-object/from16 v0, p0

    const/16 v1, 0x80

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Lgl0;->b(Ljava/lang/String;I)[I

    move-result-object v2

    iget-object v3, v0, Ldl0;->i:Ldl0$d;

    iget-object v3, v3, Ldl0$d;->b:[F

    const/4 v4, 0x1

    const/16 v5, 0x40

    invoke-static {v2, v3, v4, v1, v5}, Lfl0;->e([I[FIII)[F

    move-result-object v2

    iget-object v3, v0, Ldl0;->j:Ldl0$d;

    iget-object v7, v3, Ldl0$d;->b:[F

    iget-object v3, v3, Ldl0$d;->a:[I

    const/4 v5, 0x2

    aget v11, v3, v5

    const/4 v13, 0x0

    aget v12, v3, v13

    const/4 v8, 0x1

    const/16 v9, 0x80

    const/16 v10, 0x40

    move-object v6, v2

    invoke-static/range {v6 .. v12}, Lfl0;->c([F[FIIIII)[F

    move-result-object v3

    iget-object v6, v0, Ldl0;->k:Ldl0$d;

    iget-object v7, v6, Ldl0$d;->b:[F

    iget-object v6, v6, Ldl0$d;->a:[I

    aget v11, v6, v5

    aget v12, v6, v13

    move-object v6, v2

    invoke-static/range {v6 .. v12}, Lfl0;->c([F[FIIIII)[F

    move-result-object v14

    iget-object v6, v0, Ldl0;->l:Ldl0$d;

    iget-object v7, v6, Ldl0$d;->b:[F

    iget-object v6, v6, Ldl0$d;->a:[I

    aget v11, v6, v5

    aget v12, v6, v13

    move-object v6, v2

    invoke-static/range {v6 .. v12}, Lfl0;->c([F[FIIIII)[F

    move-result-object v2

    iget-object v6, v0, Ldl0;->m:Ldl0$d;

    iget-object v6, v6, Ldl0$d;->b:[F

    iget-object v7, v0, Ldl0;->j:Ldl0$d;

    iget-object v7, v7, Ldl0$d;->a:[I

    aget v8, v7, v5

    rsub-int v8, v8, 0x80

    add-int/2addr v8, v4

    aget v7, v7, v13

    invoke-static {v3, v6, v4, v8, v7}, Lfl0;->a([F[FIII)[F

    iget-object v6, v0, Ldl0;->n:Ldl0$d;

    iget-object v6, v6, Ldl0$d;->b:[F

    iget-object v7, v0, Ldl0;->k:Ldl0$d;

    iget-object v7, v7, Ldl0$d;->a:[I

    aget v8, v7, v5

    rsub-int v8, v8, 0x80

    add-int/2addr v8, v4

    aget v7, v7, v13

    invoke-static {v14, v6, v4, v8, v7}, Lfl0;->a([F[FIII)[F

    iget-object v6, v0, Ldl0;->o:Ldl0$d;

    iget-object v6, v6, Ldl0$d;->b:[F

    iget-object v7, v0, Ldl0;->l:Ldl0$d;

    iget-object v7, v7, Ldl0$d;->a:[I

    aget v8, v7, v5

    rsub-int v8, v8, 0x80

    add-int/2addr v8, v4

    aget v7, v7, v13

    invoke-static {v2, v6, v4, v8, v7}, Lfl0;->a([F[FIII)[F

    iget-object v6, v0, Ldl0;->j:Ldl0$d;

    iget-object v6, v6, Ldl0$d;->a:[I

    aget v7, v6, v5

    rsub-int v7, v7, 0x80

    add-int/2addr v7, v4

    aget v6, v6, v13

    mul-int v7, v7, v6

    invoke-static {v3, v7}, Lfl0;->h([FI)V

    iget-object v6, v0, Ldl0;->k:Ldl0$d;

    iget-object v6, v6, Ldl0$d;->a:[I

    aget v7, v6, v5

    rsub-int v7, v7, 0x80

    add-int/2addr v7, v4

    aget v6, v6, v13

    mul-int v7, v7, v6

    invoke-static {v14, v7}, Lfl0;->h([FI)V

    iget-object v6, v0, Ldl0;->l:Ldl0$d;

    iget-object v6, v6, Ldl0$d;->a:[I

    aget v7, v6, v5

    rsub-int v7, v7, 0x80

    add-int/2addr v7, v4

    aget v6, v6, v13

    mul-int v7, v7, v6

    invoke-static {v2, v7}, Lfl0;->h([FI)V

    iget-object v6, v0, Ldl0;->j:Ldl0$d;

    iget-object v6, v6, Ldl0$d;->a:[I

    aget v7, v6, v5

    rsub-int v7, v7, 0x80

    add-int/2addr v7, v4

    aget v8, v6, v13

    aget v6, v6, v5

    rsub-int v6, v6, 0x80

    add-int/2addr v6, v4

    invoke-static {v3, v7, v8, v6}, Lfl0;->f([FIII)[F

    move-result-object v3

    iget-object v6, v0, Ldl0;->k:Ldl0$d;

    iget-object v6, v6, Ldl0$d;->a:[I

    aget v7, v6, v5

    rsub-int v7, v7, 0x80

    add-int/2addr v7, v4

    aget v8, v6, v13

    aget v6, v6, v5

    rsub-int v6, v6, 0x80

    add-int/2addr v6, v4

    invoke-static {v14, v7, v8, v6}, Lfl0;->f([FIII)[F

    move-result-object v6

    iget-object v7, v0, Ldl0;->l:Ldl0$d;

    iget-object v7, v7, Ldl0$d;->a:[I

    aget v8, v7, v5

    rsub-int v8, v8, 0x80

    add-int/2addr v8, v4

    aget v9, v7, v13

    aget v5, v7, v5

    sub-int/2addr v1, v5

    add-int/2addr v1, v4

    invoke-static {v2, v8, v9, v1}, Lfl0;->f([FIII)[F

    move-result-object v1

    invoke-static {v3, v6}, Lfl0;->b([F[F)[F

    move-result-object v2

    invoke-static {v2, v1}, Lfl0;->b([F[F)[F

    move-result-object v1

    move-object/from16 v2, p1

    invoke-static {v1, v2}, Lfl0;->b([F[F)[F

    move-result-object v5

    iget-object v1, v0, Ldl0;->p:Ldl0$d;

    iget-object v6, v1, Ldl0$d;->b:[F

    iget-object v2, v0, Ldl0;->s:Ldl0$d;

    iget-object v7, v2, Ldl0$d;->b:[F

    iget-object v1, v1, Ldl0$d;->a:[I

    aget v9, v1, v4

    aget v10, v1, v13

    const/4 v8, 0x1

    invoke-static/range {v5 .. v10}, Lfl0;->d([F[F[FIII)[F

    move-result-object v14

    iget-object v1, v0, Ldl0;->s:Ldl0$d;

    iget-object v1, v1, Ldl0$d;->a:[I

    aget v1, v1, v13

    invoke-static {v14, v1}, Lfl0;->h([FI)V

    iget-object v1, v0, Ldl0;->q:Ldl0$d;

    iget-object v15, v1, Ldl0$d;->b:[F

    iget-object v2, v0, Ldl0;->t:Ldl0$d;

    iget-object v2, v2, Ldl0$d;->b:[F

    iget-object v1, v1, Ldl0$d;->a:[I

    aget v18, v1, v4

    aget v19, v1, v13

    const/16 v17, 0x1

    move-object/from16 v16, v2

    invoke-static/range {v14 .. v19}, Lfl0;->d([F[F[FIII)[F

    move-result-object v5

    iget-object v1, v0, Ldl0;->t:Ldl0$d;

    iget-object v1, v1, Ldl0$d;->a:[I

    aget v1, v1, v13

    invoke-static {v5, v1}, Lfl0;->h([FI)V

    iget-object v1, v0, Ldl0;->r:Ldl0$d;

    iget-object v6, v1, Ldl0$d;->b:[F

    iget-object v2, v0, Ldl0;->u:Ldl0$d;

    iget-object v7, v2, Ldl0$d;->b:[F

    iget-object v1, v1, Ldl0$d;->a:[I

    aget v9, v1, v4

    aget v10, v1, v13

    invoke-static/range {v5 .. v10}, Lfl0;->d([F[F[FIII)[F

    move-result-object v1

    iget-object v2, v0, Ldl0;->u:Ldl0$d;

    iget-object v2, v2, Ldl0$d;->a:[I

    aget v2, v2, v13

    invoke-static {v1, v2}, Lfl0;->i([FI)V

    invoke-virtual {v0, v1}, Ldl0;->k([F)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public j([F)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    aget p1, p1, v0

    iget-object v0, p0, Ldl0;->f:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_0

    const-string p1, "SHOULD_FILTER"

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public k([F)Ljava/lang/String;
    .locals 3

    array-length v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ldl0;->f:[F

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ldl0;->a:Ljava/lang/String;

    const-string v2, "SUGGEST_EVENT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Ldl0;->l([F)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Ldl0;->a:Ljava/lang/String;

    const-string v2, "DATA_DETECTION_ADDRESS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Ldl0;->j([F)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public l([F)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Ldl0;->f:[F

    array-length v0, v0

    array-length v1, p1

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ldl0;->f:[F

    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget v2, p1, v0

    aget v1, v1, v0

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_1

    sget-object p1, Ldl0;->v:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string p1, "other"

    return-object p1
.end method
