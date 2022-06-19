.class public final Landroidx/core/app/g$h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/g$h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/CharSequence;

.field final b:J

.field final c:Landroidx/core/app/k;

.field d:Landroid/os/Bundle;

.field e:Ljava/lang/String;

.field f:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;JLandroidx/core/app/k;)V
    .locals 1

    .line 2736
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2721
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroidx/core/app/g$h$a;->d:Landroid/os/Bundle;

    .line 2737
    iput-object p1, p0, Landroidx/core/app/g$h$a;->a:Ljava/lang/CharSequence;

    .line 2738
    iput-wide p2, p0, Landroidx/core/app/g$h$a;->b:J

    .line 2739
    iput-object p4, p0, Landroidx/core/app/g$h$a;->c:Landroidx/core/app/k;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2757
    new-instance v0, Landroidx/core/app/k$a;

    invoke-direct {v0}, Landroidx/core/app/k$a;-><init>()V

    .line 3270
    iput-object p4, v0, Landroidx/core/app/k$a;->a:Ljava/lang/CharSequence;

    .line 2757
    invoke-virtual {v0}, Landroidx/core/app/k$a;->a()Landroidx/core/app/k;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/core/app/g$h$a;-><init>(Ljava/lang/CharSequence;JLandroidx/core/app/k;)V

    return-void
.end method
