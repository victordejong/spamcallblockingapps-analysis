.class public final Lnz$b$a;
.super Lzy$e;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lzy$e;-><init>()V

    iput-object p1, p0, Lnz$b$a;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public g(I)V
    .locals 1

    iget-object v0, p0, Lnz$b$a;->a:Ljava/lang/Object;

    invoke-static {v0, p1}, Lgz$d;->i(Ljava/lang/Object;I)V

    return-void
.end method

.method public j(I)V
    .locals 1

    iget-object v0, p0, Lnz$b$a;->a:Ljava/lang/Object;

    invoke-static {v0, p1}, Lgz$d;->j(Ljava/lang/Object;I)V

    return-void
.end method
