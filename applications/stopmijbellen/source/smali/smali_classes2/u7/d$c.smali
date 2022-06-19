.class public Lu7/d$c;
.super Lu7/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu7/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu7/f<",
        "Ljava/lang/String;",
        "Lu7/d$b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lu7/d;


# direct methods
.method public constructor <init>(Lu7/d;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lu7/d$c;->h:Lu7/d;

    .line 2
    iget-wide v0, p1, Lu7/d;->f:J

    invoke-direct {p0, v0, v1}, Lu7/f;-><init>(J)V

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/String;

    check-cast p3, Lu7/d$b;

    check-cast p4, Lu7/d$b;

    if-eqz p4, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lu7/d$c;->h:Lu7/d;

    iget-boolean p1, p1, Lu7/d;->h:Z

    if-eqz p1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    new-instance p1, Ljava/io/File;

    iget-object p3, p0, Lu7/d$c;->h:Lu7/d;

    iget-object p3, p3, Lu7/d;->e:Ljava/io/File;

    invoke-direct {p1, p3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :goto_0
    return-void
.end method

.method public e(Ljava/lang/Object;Ljava/lang/Object;)J
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lu7/d$b;

    .line 2
    iget-object p1, p0, Lu7/d$c;->h:Lu7/d;

    iget-wide v0, p1, Lu7/d;->c:J

    iget-wide p1, p2, Lu7/d$b;->a:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    return-wide p1
.end method
