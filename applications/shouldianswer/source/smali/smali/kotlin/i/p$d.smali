.class final Lkotlin/i/p$d;
.super Lkotlin/e/b/i;
.source "Strings.kt"

# interfaces
.implements Lkotlin/e/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/i/p;->a(Ljava/lang/CharSequence;[CZI)Lkotlin/h/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/e/b/i;",
        "Lkotlin/e/a/b<",
        "Lkotlin/f/c;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lkotlin/i/p$d;->a:Ljava/lang/CharSequence;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/e/b/i;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/f/c;

    invoke-virtual {p0, p1}, Lkotlin/i/p$d;->a(Lkotlin/f/c;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lkotlin/f/c;)Ljava/lang/String;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1218
    iget-object v0, p0, Lkotlin/i/p$d;->a:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Lkotlin/i/g;->a(Ljava/lang/CharSequence;Lkotlin/f/c;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
