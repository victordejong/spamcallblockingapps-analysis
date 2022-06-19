.class public final Landroidx/core/app/k$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/CharSequence;

.field public b:Landroidx/core/graphics/drawable/IconCompat;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Z

.field f:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Landroidx/core/app/k;)V
    .locals 1

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    iget-object v0, p1, Landroidx/core/app/k;->a:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/core/app/k$a;->a:Ljava/lang/CharSequence;

    .line 257
    iget-object v0, p1, Landroidx/core/app/k;->b:Landroidx/core/graphics/drawable/IconCompat;

    iput-object v0, p0, Landroidx/core/app/k$a;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 258
    iget-object v0, p1, Landroidx/core/app/k;->c:Ljava/lang/String;

    iput-object v0, p0, Landroidx/core/app/k$a;->c:Ljava/lang/String;

    .line 259
    iget-object v0, p1, Landroidx/core/app/k;->d:Ljava/lang/String;

    iput-object v0, p0, Landroidx/core/app/k$a;->d:Ljava/lang/String;

    .line 260
    iget-boolean v0, p1, Landroidx/core/app/k;->e:Z

    iput-boolean v0, p0, Landroidx/core/app/k$a;->e:Z

    .line 261
    iget-boolean p1, p1, Landroidx/core/app/k;->f:Z

    iput-boolean p1, p0, Landroidx/core/app/k$a;->f:Z

    return-void
.end method


# virtual methods
.method public final a()Landroidx/core/app/k;
    .locals 1

    .line 340
    new-instance v0, Landroidx/core/app/k;

    invoke-direct {v0, p0}, Landroidx/core/app/k;-><init>(Landroidx/core/app/k$a;)V

    return-object v0
.end method
