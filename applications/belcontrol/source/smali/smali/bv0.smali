.class public final synthetic Lbv0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lwe;


# static fields
.field public static final synthetic a:Lbv0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lbv0;

    invoke-direct {v0}, Lbv0;-><init>()V

    sput-object v0, Lbv0;->a:Lbv0;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->z(Ljava/lang/Boolean;)V

    return-void
.end method
