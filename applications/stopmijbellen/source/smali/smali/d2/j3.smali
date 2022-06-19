.class public Ld2/j3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld2/j3$b;
    }
.end annotation


# instance fields
.field public a:Z

.field public final b:Ljava/lang/Runnable;

.field public c:Ljava/lang/Runnable;

.field public d:Ld2/j3$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ld2/j3;->a:Z

    .line 3
    new-instance v0, Ld2/j3$a;

    invoke-direct {v0, p0}, Ld2/j3$a;-><init>(Ld2/j3;)V

    iput-object v0, p0, Ld2/j3;->b:Ljava/lang/Runnable;

    return-void
.end method
