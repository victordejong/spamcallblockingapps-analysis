.class public final synthetic Lvv0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lwv0$c;


# instance fields
.field public final synthetic a:Lwv0;


# direct methods
.method public synthetic constructor <init>(Lwv0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvv0;->a:Lwv0;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lvv0;->a:Lwv0;

    check-cast p2, Lzv0;

    invoke-static {v0, p1, p2}, Lwv0;->g(Lwv0;ILzv0;)Lzv0;

    return-object p2
.end method
