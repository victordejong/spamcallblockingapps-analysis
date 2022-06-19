.class public final synthetic Lbr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljr$a;


# static fields
.field public static final a:Ljr$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbr;

    invoke-direct {v0}, Lbr;-><init>()V

    sput-object v0, Lbr;->a:Ljr$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lmq;Lct;Lir;)Ljr;
    .locals 1

    new-instance v0, Lcr;

    invoke-direct {v0, p1, p2, p3}, Lcr;-><init>(Lmq;Lct;Lir;)V

    return-object v0
.end method
