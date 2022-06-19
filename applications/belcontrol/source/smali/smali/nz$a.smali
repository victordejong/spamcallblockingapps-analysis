.class public Lnz$a;
.super Lnz$d;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnz$f;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnz$d;-><init>(Landroid/content/Context;Lnz$f;)V

    return-void
.end method


# virtual methods
.method public P(Lnz$b$b;Lxy$a;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lnz$d;->P(Lnz$b$b;Lxy$a;)V

    iget-object p1, p1, Lnz$b$b;->a:Ljava/lang/Object;

    invoke-static {p1}, Lfz;->a(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p2, p1}, Lxy$a;->f(I)Lxy$a;

    return-void
.end method
