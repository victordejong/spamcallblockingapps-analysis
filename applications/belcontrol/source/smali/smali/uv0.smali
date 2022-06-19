.class public final synthetic Luv0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lwv0$a;


# instance fields
.field public final synthetic a:Lwv0$b;


# direct methods
.method public synthetic constructor <init>(Lwv0$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luv0;->a:Lwv0$b;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Iterable;Lwv0$c;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Luv0;->a:Lwv0$b;

    invoke-static {v0, p1, p2}, Lwv0;->f(Lwv0$b;Ljava/lang/Iterable;Lwv0$c;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
