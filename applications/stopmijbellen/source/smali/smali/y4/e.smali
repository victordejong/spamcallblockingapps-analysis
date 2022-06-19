.class public final Ly4/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lx4/a$b;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/api/AppMeasurementSdk;Lx4/a$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ly4/e;->a:Lx4/a$b;

    new-instance p2, Ly4/d;

    .line 1
    invoke-direct {p2, p0}, Ly4/d;-><init>(Ly4/e;)V

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->registerOnMeasurementEventListener(Lcom/google/android/gms/measurement/api/AppMeasurementSdk$OnEventListener;)V

    return-void
.end method
