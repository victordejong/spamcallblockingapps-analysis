.class final Lb/j/a/a$b;
.super Ljava/lang/Object;
.source "ExploreByTouchHelper.java"

# interfaces
.implements Lb/j/a/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/j/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/j/a/b$b<",
        "Lb/e/h<",
        "Lb/h/l/f0/c;",
        ">;",
        "Lb/h/l/f0/c;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lb/e/h;

    invoke-virtual {p0, p1, p2}, Lb/j/a/a$b;->c(Lb/e/h;I)Lb/h/l/f0/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lb/e/h;

    invoke-virtual {p0, p1}, Lb/j/a/a$b;->d(Lb/e/h;)I

    move-result p1

    return p1
.end method

.method public c(Lb/e/h;I)Lb/h/l/f0/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/e/h<",
            "Lb/h/l/f0/c;",
            ">;I)",
            "Lb/h/l/f0/c;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Lb/e/h;->n(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/h/l/f0/c;

    return-object p1
.end method

.method public d(Lb/e/h;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/e/h<",
            "Lb/h/l/f0/c;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lb/e/h;->m()I

    move-result p1

    return p1
.end method
