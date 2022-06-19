.class public final Lyo$c;
.super Ldp;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final d:Ljava/lang/Object;


# instance fields
.field public final c:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyo$c;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lph;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Ldp;-><init>(Lph;)V

    iput-object p2, p0, Lyo$c;->c:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic s()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lyo$c;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic t(Lyo$c;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lyo$c;->c:Ljava/lang/Object;

    return-object p0
.end method

.method public static v(Ljava/lang/Object;)Lyo$c;
    .locals 2

    new-instance v0, Lyo$c;

    new-instance v1, Lyo$e;

    invoke-direct {v1, p0}, Lyo$e;-><init>(Ljava/lang/Object;)V

    sget-object p0, Lyo$c;->d:Ljava/lang/Object;

    invoke-direct {v0, v1, p0}, Lyo$c;-><init>(Lph;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static w(Lph;Ljava/lang/Object;)Lyo$c;
    .locals 1

    new-instance v0, Lyo$c;

    invoke-direct {v0, p0, p1}, Lyo$c;-><init>(Lph;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public b(Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Ldp;->b:Lph;

    sget-object v1, Lyo$c;->d:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lyo$c;->c:Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p1}, Lph;->b(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public g(ILph$b;Z)Lph$b;
    .locals 1

    iget-object v0, p0, Ldp;->b:Lph;

    invoke-virtual {v0, p1, p2, p3}, Lph;->g(ILph$b;Z)Lph$b;

    iget-object p1, p2, Lph$b;->b:Ljava/lang/Object;

    iget-object p3, p0, Lyo$c;->c:Ljava/lang/Object;

    invoke-static {p1, p3}, Lnu;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lyo$c;->d:Ljava/lang/Object;

    iput-object p1, p2, Lph$b;->b:Ljava/lang/Object;

    :cond_0
    return-object p2
.end method

.method public l(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ldp;->b:Lph;

    invoke-virtual {v0, p1}, Lph;->l(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lyo$c;->c:Ljava/lang/Object;

    invoke-static {p1, v0}, Lnu;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lyo$c;->d:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public u(Lph;)Lyo$c;
    .locals 2

    new-instance v0, Lyo$c;

    iget-object v1, p0, Lyo$c;->c:Ljava/lang/Object;

    invoke-direct {v0, p1, v1}, Lyo$c;-><init>(Lph;Ljava/lang/Object;)V

    return-object v0
.end method

.method public x()Lph;
    .locals 1

    iget-object v0, p0, Ldp;->b:Lph;

    return-object v0
.end method
