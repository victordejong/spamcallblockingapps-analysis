.class public final Lcom/google/api/services/gmail/Gmail$Users$Settings$Delegates;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/gmail/Gmail$Users$Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Delegates"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/gmail/Gmail$Users$Settings$Delegates$List;,
        Lcom/google/api/services/gmail/Gmail$Users$Settings$Delegates$Get;,
        Lcom/google/api/services/gmail/Gmail$Users$Settings$Delegates$Delete;,
        Lcom/google/api/services/gmail/Gmail$Users$Settings$Delegates$Create;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/api/services/gmail/Gmail$Users$Settings;


# direct methods
.method public constructor <init>(Lcom/google/api/services/gmail/Gmail$Users$Settings;)V
    .locals 0

    .line 5673
    iput-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users$Settings$Delegates;->a:Lcom/google/api/services/gmail/Gmail$Users$Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
