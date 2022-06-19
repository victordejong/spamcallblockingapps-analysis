.class public Ld2/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p3, v0, :cond_2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Ld2/i3;->z(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_0

    invoke-static {p2}, Ld2/i3;->z(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 3
    :cond_0
    iput-object p1, p0, Ld2/m;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Ld2/m;->b:Ljava/lang/String;

    :cond_1
    return-void

    .line 5
    :cond_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld2/m;->a:Ljava/lang/String;

    iput-object p2, p0, Ld2/m;->b:Ljava/lang/String;

    return-void
.end method
