.class public Lo5$b;
.super Lm5;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Lo5;Ln5;)V
    .locals 0

    invoke-direct {p0}, Lm5;-><init>()V

    new-instance p1, Lu5;

    invoke-direct {p1, p0, p2}, Lu5;-><init>(Lm5;Ln5;)V

    iput-object p1, p0, Lm5;->e:Lm5$a;

    return-void
.end method
