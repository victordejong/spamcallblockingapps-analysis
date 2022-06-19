.class public final synthetic Lz2/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz2/r$b;
.implements Lp6/f$a;
.implements Lh5/a$a;
.implements Ls4/f;
.implements Le2/g$c;


# static fields
.field public static final synthetic b:Lz2/p;

.field public static final synthetic c:Lz2/p;

.field public static final synthetic d:Lz2/p;

.field public static final synthetic e:Lz2/p;

.field public static final synthetic f:Lz2/p;

.field public static final synthetic g:Lz2/p;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lz2/p;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lz2/p;-><init>(I)V

    sput-object v0, Lz2/p;->b:Lz2/p;

    new-instance v0, Lz2/p;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lz2/p;-><init>(I)V

    sput-object v0, Lz2/p;->c:Lz2/p;

    new-instance v0, Lz2/p;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lz2/p;-><init>(I)V

    sput-object v0, Lz2/p;->d:Lz2/p;

    new-instance v0, Lz2/p;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lz2/p;-><init>(I)V

    sput-object v0, Lz2/p;->e:Lz2/p;

    new-instance v0, Lz2/p;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lz2/p;-><init>(I)V

    sput-object v0, Lz2/p;->f:Lz2/p;

    new-instance v0, Lz2/p;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lz2/p;-><init>(I)V

    sput-object v0, Lz2/p;->g:Lz2/p;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lz2/p;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lz2/p;->a:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    check-cast p1, Landroid/database/Cursor;

    sget-object v0, Lz2/r;->e:Lr2/b;

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    invoke-static {}, Lu2/i;->a()Lu2/i$a;

    move-result-object v2

    const/4 v3, 0x1

    .line 4
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lu2/i$a;->b(Ljava/lang/String;)Lu2/i$a;

    const/4 v3, 0x2

    .line 5
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Lc3/a;->b(I)Lr2/d;

    move-result-object v3

    invoke-virtual {v2, v3}, Lu2/i$a;->c(Lr2/d;)Lu2/i$a;

    const/4 v3, 0x3

    .line 6
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    .line 7
    :cond_0
    invoke-static {v3, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .line 8
    :goto_1
    check-cast v2, Lu2/b$b;

    .line 9
    iput-object v3, v2, Lu2/b$b;->b:[B

    .line 10
    invoke-virtual {v2}, Lu2/b$b;->a()Lu2/i;

    move-result-object v2

    .line 11
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0

    .line 12
    :goto_2
    check-cast p1, Landroid/database/Cursor;

    sget-object v0, Lz2/r;->e:Lr2/b;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 14
    :goto_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 15
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 16
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    array-length v3, v3

    add-int/2addr v2, v3

    goto :goto_3

    .line 18
    :cond_2
    new-array p1, v2, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 19
    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 20
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 21
    array-length v5, v4

    invoke-static {v4, v1, p1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    array-length v4, v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_3
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public b(Landroid/util/JsonReader;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lh5/a;->a:Lr5/a;

    .line 1
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    .line 2
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v6, "importance"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x2

    goto :goto_1

    :sswitch_1
    const-string v6, "name"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    goto :goto_1

    :sswitch_2
    const-string v6, "frames"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 5
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 6
    :pswitch_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    .line 8
    :pswitch_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "Null name"

    .line 9
    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :pswitch_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    .line 12
    :goto_2
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 13
    invoke-static {p1}, Lh5/a;->a(Landroid/util/JsonReader;)Lg5/v$d$d$a$b$d$a;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 14
    :cond_3
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    .line 15
    new-instance v4, Lg5/w;

    invoke-direct {v4, v3}, Lg5/w;-><init>(Ljava/util/List;)V

    move-object v3, v4

    goto :goto_0

    .line 16
    :cond_4
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    if-nez v1, :cond_5

    const-string p1, " name"

    goto :goto_3

    :cond_5
    const-string p1, ""

    :goto_3
    if-nez v2, :cond_6

    const-string v4, " importance"

    .line 17
    invoke-static {p1, v4}, Lcom/google/android/gms/internal/ads/a;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_6
    if-nez v3, :cond_7

    const-string v4, " frames"

    .line 18
    invoke-static {p1, v4}, Lcom/google/android/gms/internal/ads/a;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 19
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 20
    new-instance p1, Lg5/p;

    .line 21
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p1, v1, v2, v3, v0}, Lg5/p;-><init>(Ljava/lang/String;ILg5/w;Lg5/p$a;)V

    return-object p1

    .line 22
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing required properties:"

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/a;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x4b7d7b5a -> :sswitch_2
        0x337a8b -> :sswitch_1
        0x7eb2da74 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    check-cast p1, Landroid/content/Context;

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.type.television"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "tv"

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.type.watch"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "watch"

    goto :goto_0

    :cond_1
    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.type.automotive"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, "auto"

    goto :goto_0

    :cond_2
    const/16 v1, 0x1a

    if-lt v0, v1, :cond_3

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "android.hardware.type.embedded"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "embedded"

    goto :goto_0

    :cond_3
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public g(Le2/g;Le2/b;)V
    .locals 0

    sget p1, Lcom/mglab/scm/visual/FragmentDev;->b:I

    .line 1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    const/4 p1, 0x1

    .line 2
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public onConsentFormLoadFailure(Ls4/e;)V
    .locals 0

    sget p1, Lcom/mglab/scm/MainActivity;->v:I

    return-void
.end method
