.class public final Lec0$a;
.super Lec0$b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lec0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lec0$b;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Lec0;

    invoke-virtual {p0, p1, p2}, Lec0$a;->d(Lec0;F)V

    return-void
.end method

.method public c(Lec0;)Ljava/lang/Float;
    .locals 0

    invoke-static {p1}, Lec0;->r(Lec0;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public d(Lec0;F)V
    .locals 0

    invoke-static {p1, p2}, Lec0;->s(Lec0;F)F

    invoke-virtual {p1}, Lfc0;->m()V

    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lec0;

    invoke-virtual {p0, p1}, Lec0$a;->c(Lec0;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method
