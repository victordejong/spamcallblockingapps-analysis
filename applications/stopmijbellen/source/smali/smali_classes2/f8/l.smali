.class public final synthetic Lf8/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;


# static fields
.field public static final synthetic a:Lf8/l;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lf8/l;

    invoke-direct {v0}, Lf8/l;-><init>()V

    sput-object v0, Lf8/l;->a:Lf8/l;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInitializationComplete(Lcom/google/android/gms/ads/initialization/InitializationStatus;)V
    .locals 0

    sget p1, Lcom/mglab/scm/MainActivity;->v:I

    return-void
.end method
