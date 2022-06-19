.class public final Lxx$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
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
.field public static final a:Lxx$d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lxx$d;

    invoke-direct {v0}, Lxx$d;-><init>()V

    sput-object v0, Lxx$d;->a:Lxx$d;

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

    invoke-virtual {p0, p1, p2}, Lxx$d;->a(Ldz$i;Ldz$i;)I

    move-result p1

    return p1
.end method
