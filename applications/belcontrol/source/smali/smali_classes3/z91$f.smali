.class public Lz91$f;
.super Lz91$g;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz91;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public b:J

.field public c:J

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Li91;JJLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lz91$g;-><init>(Li91;)V

    iput-object p6, p0, Lz91$f;->d:Ljava/lang/String;

    iput-wide p2, p0, Lz91$f;->b:J

    iput-wide p4, p0, Lz91$f;->c:J

    return-void
.end method
