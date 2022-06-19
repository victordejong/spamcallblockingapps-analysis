.class public final synthetic Lcj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lnt$a;


# static fields
.field public static final a:Lnt$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcj;

    invoke-direct {v0}, Lcj;-><init>()V

    sput-object v0, Lcj;->a:Lnt$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lhj;

    invoke-interface {p1}, Lhj;->onDrmKeysRestored()V

    return-void
.end method
