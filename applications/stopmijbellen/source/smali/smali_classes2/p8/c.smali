.class public abstract Lp8/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp8/c$a;
    }
.end annotation


# instance fields
.field public a:F

.field public b:Landroid/view/animation/Interpolator;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lp8/c;->b:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lp8/c;->c:Z

    return-void
.end method


# virtual methods
.method public abstract a()Lp8/c;
.end method

.method public abstract b()Ljava/lang/Object;
.end method

.method public abstract c(Ljava/lang/Object;)V
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lp8/c;->a()Lp8/c;

    move-result-object v0

    return-object v0
.end method
