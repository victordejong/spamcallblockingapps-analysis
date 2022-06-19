.class final Lcom/hjq/permissions/ManifestRegisterException;
.super Ljava/lang/RuntimeException;
.source "ManifestRegisterException.java"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "No permissions are registered in the manifest file"

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": Permissions are not registered in the manifest file"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
