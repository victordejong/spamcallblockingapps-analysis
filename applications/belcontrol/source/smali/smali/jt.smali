.class public interface abstract Ljt;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ljt;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lgu;

    invoke-direct {v0}, Lgu;-><init>()V

    sput-object v0, Ljt;->a:Ljt;

    return-void
.end method


# virtual methods
.method public abstract createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lrt;
.end method

.method public abstract elapsedRealtime()J
.end method

.method public abstract uptimeMillis()J
.end method
