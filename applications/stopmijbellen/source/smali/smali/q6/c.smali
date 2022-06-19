.class public Lq6/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq6/c$b;
    }
.end annotation


# instance fields
.field public final a:J

.field public final b:J


# direct methods
.method public constructor <init>(Lq6/c$b;Lq6/c$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-wide v0, p1, Lq6/c$b;->a:J

    .line 3
    iput-wide v0, p0, Lq6/c;->a:J

    .line 4
    iget-wide p1, p1, Lq6/c$b;->b:J

    .line 5
    iput-wide p1, p0, Lq6/c;->b:J

    return-void
.end method
