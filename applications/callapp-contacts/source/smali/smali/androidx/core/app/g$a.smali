.class public final Landroidx/core/app/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/os/Bundle;

.field final b:[Landroidx/core/app/l;

.field final c:[Landroidx/core/app/l;

.field d:Z

.field e:Z

.field final f:I

.field final g:Z

.field public h:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public i:Ljava/lang/CharSequence;

.field public j:Landroid/app/PendingIntent;

.field private k:Landroidx/core/graphics/drawable/IconCompat;


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 3303
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/IconCompat;->a(Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/core/app/g$a;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    return-void
.end method

.method constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/l;[Landroidx/core/app/l;ZIZZ)V
    .locals 12

    move v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 3320
    invoke-static {v1, p1}, Landroidx/core/graphics/drawable/IconCompat;->a(Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    :goto_0
    move-object v2, v0

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Landroidx/core/app/g$a;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/l;[Landroidx/core/app/l;ZIZZ)V

    return-void
.end method

.method public constructor <init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 11

    .line 3312
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v10}, Landroidx/core/app/g$a;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/l;[Landroidx/core/app/l;ZIZZ)V

    return-void
.end method

.method constructor <init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/l;[Landroidx/core/app/l;ZIZZ)V
    .locals 2

    .line 3331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3280
    iput-boolean v0, p0, Landroidx/core/app/g$a;->e:Z

    .line 3332
    iput-object p1, p0, Landroidx/core/app/g$a;->k:Landroidx/core/graphics/drawable/IconCompat;

    if-eqz p1, :cond_0

    .line 3333
    invoke-virtual {p1}, Landroidx/core/graphics/drawable/IconCompat;->a()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3334
    invoke-virtual {p1}, Landroidx/core/graphics/drawable/IconCompat;->b()I

    move-result p1

    iput p1, p0, Landroidx/core/app/g$a;->h:I

    .line 3336
    :cond_0
    invoke-static {p2}, Landroidx/core/app/g$e;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/g$a;->i:Ljava/lang/CharSequence;

    .line 3337
    iput-object p3, p0, Landroidx/core/app/g$a;->j:Landroid/app/PendingIntent;

    if-eqz p4, :cond_1

    goto :goto_0

    .line 3338
    :cond_1
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    :goto_0
    iput-object p4, p0, Landroidx/core/app/g$a;->a:Landroid/os/Bundle;

    .line 3339
    iput-object p5, p0, Landroidx/core/app/g$a;->b:[Landroidx/core/app/l;

    .line 3340
    iput-object p6, p0, Landroidx/core/app/g$a;->c:[Landroidx/core/app/l;

    .line 3341
    iput-boolean p7, p0, Landroidx/core/app/g$a;->d:Z

    .line 3342
    iput p8, p0, Landroidx/core/app/g$a;->f:I

    .line 3343
    iput-boolean p9, p0, Landroidx/core/app/g$a;->e:Z

    .line 3344
    iput-boolean p10, p0, Landroidx/core/app/g$a;->g:Z

    return-void
.end method


# virtual methods
.method public final a()Landroidx/core/graphics/drawable/IconCompat;
    .locals 2

    .line 3361
    iget-object v0, p0, Landroidx/core/app/g$a;->k:Landroidx/core/graphics/drawable/IconCompat;

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/core/app/g$a;->h:I

    if-eqz v0, :cond_0

    const-string v1, ""

    .line 3362
    invoke-static {v1, v0}, Landroidx/core/graphics/drawable/IconCompat;->a(Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/g$a;->k:Landroidx/core/graphics/drawable/IconCompat;

    .line 3364
    :cond_0
    iget-object v0, p0, Landroidx/core/app/g$a;->k:Landroidx/core/graphics/drawable/IconCompat;

    return-object v0
.end method
