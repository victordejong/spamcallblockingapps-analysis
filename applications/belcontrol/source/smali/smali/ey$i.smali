.class public final Ley$i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ley;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ldz$i;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ley$i;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ley$i;

    invoke-direct {v0}, Ley$i;-><init>()V

    sput-object v0, Ley$i;->a:Ley$i;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ldz$i;Ldz$i;)I
    .locals 0

    invoke-virtual {p1}, Ldz$i;->l()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ldz$i;->l()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ldz$i;

    check-cast p2, Ldz$i;

    invoke-virtual {p0, p1, p2}, Ley$i;->a(Ldz$i;Ldz$i;)I

    move-result p1

    return p1
.end method
