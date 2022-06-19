.class public final Lcom/google/api/services/gmail/Gmail$Users$Settings$ForwardingAddresses;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/gmail/Gmail$Users$Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ForwardingAddresses"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/gmail/Gmail$Users$Settings$ForwardingAddresses$List;,
        Lcom/google/api/services/gmail/Gmail$Users$Settings$ForwardingAddresses$Get;,
        Lcom/google/api/services/gmail/Gmail$Users$Settings$ForwardingAddresses$Delete;,
        Lcom/google/api/services/gmail/Gmail$Users$Settings$ForwardingAddresses$Create;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/api/services/gmail/Gmail$Users$Settings;


# direct methods
.method public constructor <init>(Lcom/google/api/services/gmail/Gmail$Users$Settings;)V
    .locals 0

    .line 6731
    iput-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users$Settings$ForwardingAddresses;->a:Lcom/google/api/services/gmail/Gmail$Users$Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
