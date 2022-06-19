.class public final synthetic Lco;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final a:Ldo$g;


# direct methods
.method public constructor <init>(Ldo$g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lco;->a:Ldo$g;

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lco;->a:Ldo$g;

    invoke-static {v0, p1, p2}, Ldo;->t(Ldo$g;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
